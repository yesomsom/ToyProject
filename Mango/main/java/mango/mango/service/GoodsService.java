package mango.mango.service;

import java.util.List;

import mango.mango.model.GoodsVO;

public interface GoodsService {
   List<GoodsVO> selectAllGoodsList(GoodsVO gVO) throws Exception;

   Integer selectAllGoodsCount(GoodsVO gVO) throws Exception;

   public GoodsVO selectGoodsDetailList(int goodsId) throws Exception;
   
   void insertGoods(GoodsVO goodsVO) throws Exception;
}