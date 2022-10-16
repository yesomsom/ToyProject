package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.InfoDTO;

@Repository("InfoDAO")
public class InfoDAO extends ComAbstractDAO {
	public void insertInfo(InfoDTO DTO) throws Exception {
		insert("InfoMapper.insertInfo", DTO);
	}

	public List<InfoDTO> selectTheaterListKo(InfoDTO DTO) throws Exception {
		
		return selectList("InfoMapper.selectTheaterListKo", DTO);
	}
	
	public void deleteInfo() throws Exception {
		delete("InfoMapper.deleteInfo");
	}
}