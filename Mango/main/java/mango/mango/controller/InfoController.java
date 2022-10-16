package mango.mango.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mango.common.service.Criteria;
import mango.common.util.UserURLValue;
import mango.mango.model.InfoDTO;
import mango.mango.service.InfoService;

@Controller
@RequestMapping(value = UserURLValue.MANGO_BASIC)
public class InfoController {   
   private static Logger logger = LoggerFactory.getLogger(InfoController.class);
   @Resource(name = "InfoService")
   private InfoService infoService;  
   
   @RequestMapping(value = "/crawling", produces="text/plain;charset=UTF-8")
   public @ResponseBody ResponseEntity<String> getCrawling(HttpServletRequest request, ModelMap model, Criteria cri) throws Exception {      
      HttpHeaders responseHeaders = new HttpHeaders();
      responseHeaders.add("Content-Type", "text/html;charset=UTF-8");      
      infoService.deleteInfo();
      Document doc;
      String gson = "";
      
      try {
         
          doc = Jsoup.connect("http://www.cgv.co.kr/movies/").get();
         /* Elements */
          Elements ranks = doc.select(".rank");
         /* logger.info("rank" + ranks); */
          
          Elements imgs = doc.select(".thumb-image > img");
         /* logger.info("imgs" + imgs); */
          
          Elements movieTitles = doc.select("div.box-contents strong.title");
         /* logger.info("titles" + movieTitles); */
          
          Elements movieRates = doc.select(".percent span");
         /* logger.info("percents" + movieRates); */
          
          
          Elements movieOpenDates = doc.select(".txt-info strong");
         /* logger.info("percents" + movieOpenDates); */

          List<InfoDTO> list = new ArrayList<InfoDTO>();
          
          for(int i = 0; i < ranks.size(); i++) {
            
             String rank = ranks.get(i).text();
             String img = imgs.get(i).attr("src");
             String movieTitle = movieTitles.get(i).text();
             String movieRate = movieRates.get(i).text();
             String movieOpenDate = movieOpenDates.get(i).text();
             int seq = i;
             InfoDTO InfoDto = new InfoDTO(seq, rank, img, movieTitle, movieRate, movieOpenDate);
         InfoDTO infoDto_add = new InfoDTO();
         infoDto_add.setRank(rank);
         infoDto_add.setImg(img);
         infoDto_add.setMovieOpenDate(movieOpenDate);
         infoDto_add.setMovieRate(movieRate);
         infoDto_add.setMovieTitle(movieTitle);         
			 
         infoService.insertInfo(infoDto_add);
             logger.info(InfoDto.toString());
             list.add(InfoDto);
          }
             gson = new Gson().toJson(list);
             System.out.println(list);
             System.out.println(gson);
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }   
      
      return new ResponseEntity<String>(gson, responseHeaders, HttpStatus.CREATED);
      
   }
}