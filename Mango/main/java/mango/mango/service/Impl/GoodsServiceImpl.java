package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.GoodsDAO;
import mango.mango.model.GoodsVO;
import mango.mango.service.GoodsService;

@Service("GoodsService")
public class GoodsServiceImpl extends EgovAbstractServiceImpl implements GoodsService {
	@Resource(name = "GoodsDAO")
	private GoodsDAO goodsDAO;

	@Override
	public List<GoodsVO> selectAllGoodsList(GoodsVO gVO) throws Exception {
		return goodsDAO.selectAllGoodsList(gVO);
	}

	@Override
	public Integer selectAllGoodsCount(GoodsVO gVO) throws Exception {
		return goodsDAO.selectAllGoodsCount(gVO);
	}

	@Override
	public GoodsVO selectGoodsDetailList(int goodsId) throws Exception {
		return goodsDAO.selectGoodsDetailList(goodsId);
	}

	@Override
	public void insertGoods(GoodsVO gVO) throws Exception {
		goodsDAO.insertGoods(gVO);
	}

	@Override
	public List<GoodsVO> selectSellerGoodsList(GoodsVO gVO) throws Exception {
		return goodsDAO.selectSellerGoodsList(gVO);
	}

	@Override
	public Integer selectSellerGoodsCount(GoodsVO gVO) throws Exception {
		return goodsDAO.selectSellerGoodsCount(gVO);
	}

	@Override
	public int deleteGoods(int goodsId) throws Exception {
		return goodsDAO.deleteGoods(goodsId);
	}

	@Override
	public int modifyGoods(GoodsVO gVO) throws Exception {
		return goodsDAO.modifyGoods(gVO);
	}
}