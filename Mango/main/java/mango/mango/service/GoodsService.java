package mango.mango.service;

import java.util.List;

import mango.mango.model.GoodsVO;
import mango.mango.model.OrdersVO;

public interface GoodsService {
   List<GoodsVO> selectAllGoodsList(GoodsVO gVO) throws Exception;

   Integer selectAllGoodsCount(GoodsVO gVO) throws Exception;

   public GoodsVO selectGoodsDetailList(int goodsId) throws Exception;
   
   void insertGoods(GoodsVO gVO) throws Exception;
   
   // seller별 goodsList 출력
   List<GoodsVO> selectSellerGoodsList(GoodsVO gVO) throws Exception;
   
   // seller goods count
   Integer selectSellerGoodsCount(GoodsVO gVO) throws Exception;
   
   // 상품 삭제
   int deleteGoods(int goodsId) throws Exception;
   
   // 상품 수정
   int modifyGoods(GoodsVO gVO) throws Exception;
}