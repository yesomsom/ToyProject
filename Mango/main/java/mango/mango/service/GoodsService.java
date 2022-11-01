package mango.mango.service;

import java.util.List;

import mango.mango.model.GoodsFileVO;
import mango.mango.model.GoodsVO;

public interface GoodsService {
	List<GoodsVO> selectCatList(GoodsVO gVO) throws Exception;

	List<GoodsVO> selectAllGoodsList(GoodsVO gVO) throws Exception;

	List<GoodsVO> selectOneGoods(GoodsVO gVO) throws Exception;

	Integer selectAllGoodsCount(GoodsVO gVO) throws Exception;

	public GoodsVO selectGoodsDetailList(String goodsId) throws Exception;

	void insertGoods(GoodsVO gVO) throws Exception;

	void insertGoodsFile(GoodsFileVO gfVO) throws Exception;

	List<GoodsFileVO> selectAllGoodsFileList(GoodsFileVO gfVO) throws Exception;

	// seller별 goodsList 출력
	List<GoodsVO> selectSellerGoodsList(GoodsVO gVO) throws Exception;

	// seller goods count
	Integer selectSellerGoodsCount(GoodsVO gVO) throws Exception;

	// 상품 삭제
	void deleteGoods(String goodsId) throws Exception;

	// 상품 수정
	void modifyGoods(GoodsVO gVO) throws Exception;
}