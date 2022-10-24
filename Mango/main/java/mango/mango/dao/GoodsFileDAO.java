package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.GoodsFileVO;

@Repository("GoodsFileDAO")
public class GoodsFileDAO extends ComAbstractDAO  {
	   public List<GoodsFileVO> selectAllGoodsFileList(GoodsFileVO gfVO) throws Exception {
		      return selectList("goodsFileMapper.selectAllGoodsFileList", gfVO);
		   }
}
