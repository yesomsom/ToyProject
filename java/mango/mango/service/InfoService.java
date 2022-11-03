package mango.mango.service;

import java.util.List;

import mango.mango.model.InfoDTO;

public interface InfoService {
   void insertInfo(InfoDTO DTO) throws Exception;
   List<InfoDTO> selectTheaterListKo(InfoDTO DTO) throws Exception;
   void deleteInfo() throws Exception;
}