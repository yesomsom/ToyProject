package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.GoodsFileDAO;
import mango.mango.model.GoodsFileVO;
import mango.mango.service.GoodsFileService;

@Service("GoodsFileService")
public class GoodsFileServiceImpl extends EgovAbstractServiceImpl implements GoodsFileService {
	@Resource(name = "GoodsFileDAO")
	private GoodsFileDAO goodsFileDAO;

	@Override
	public List<GoodsFileVO> selectAllGoodsFileList(GoodsFileVO gfVO) throws Exception {
		return goodsFileDAO.selectAllGoodsFileList(gfVO);
	}
	
	
}
