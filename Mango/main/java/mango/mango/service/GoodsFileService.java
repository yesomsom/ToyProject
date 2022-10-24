package mango.mango.service;

import java.util.List;

import mango.mango.model.GoodsFileVO;

public interface GoodsFileService {
	List<GoodsFileVO> selectAllGoodsFileList(GoodsFileVO gfVO) throws Exception;
}
