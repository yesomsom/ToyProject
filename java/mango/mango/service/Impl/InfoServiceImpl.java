package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.InfoDAO;
import mango.mango.model.InfoDTO;
import mango.mango.service.InfoService;

@Service("InfoService")
public class InfoServiceImpl extends EgovAbstractServiceImpl implements InfoService {
   
   @Resource(name = "InfoDAO")
   private InfoDAO infoDAO;
   
   @Override
   public void insertInfo(InfoDTO DTO) throws Exception{
	   infoDAO.insertInfo(DTO);
   }

   @Override
   public List<InfoDTO> selectTheaterListKo(InfoDTO DTO) throws Exception {
      return infoDAO.selectTheaterListKo(DTO);
   }
   
   @Override
	public void deleteInfo() throws Exception {
		infoDAO.deleteInfo();
	}
}