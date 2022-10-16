package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.GoodsVO;

@Repository("GoodsDAO")
public class GoodsDAO extends ComAbstractDAO {
	public List<GoodsVO> selectAllGoodsList(GoodsVO gVO) throws Exception {
		return selectList("goodsMapper.selectAllGoodsList", gVO);
	}

	public Integer selectAllGoodsCount(GoodsVO gVO) throws Exception {
		return selectOne("goodsMapper.selectAllGoodsCount", gVO);
	}

	public GoodsVO selectGoodsDetailList(int goodsId) {
		return selectOne("goodsMapper.selectGoodsDetailList", goodsId);
	}

	// 상품 등록
	public void insertGoods(GoodsVO goodsVO) throws Exception {
		insert("goodsMapper.insertGoods", goodsVO);
	}
}