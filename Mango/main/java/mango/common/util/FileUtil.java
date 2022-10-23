package mango.common.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import net.coobird.thumbnailator.Thumbnails;

@Component("fileUtil")
public class FileUtil {

	
	private static final Logger LOGGER = LoggerFactory.getLogger(FileUtil.class);
	public static final int BUFF_SIZE = 2048;

	// 게시판 첨부파일을 저장하고 목록 리턴
	public List<String> uploadBoardFiles(MultipartHttpServletRequest request, String boardId, String storePath, Integer width) throws Exception {
		// 저장경로
		ServletContext context = request.getSession().getServletContext();
		

		return new ArrayList<String>();
	}
	

}
