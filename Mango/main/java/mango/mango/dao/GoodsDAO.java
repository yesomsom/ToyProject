package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.GoodsFileVO;
import mango.mango.model.GoodsVO;

@Repository("GoodsDAO")
public class GoodsDAO extends ComAbstractDAO {
   public List<GoodsVO> selectAllGoodsList(GoodsVO gVO) throws Exception {
      return selectList("goodsMapper.selectAllGoodsList", gVO);
   }

   public Integer selectAllGoodsCount(GoodsVO gVO) throws Exception {
      return selectOne("goodsMapper.selectAllGoodsCount", gVO);
   }

   public GoodsVO selectGoodsDetailList(String goodsId) {
      return selectOne("goodsMapper.selectGoodsDetailList", goodsId);
   }

   // 상품 등록
   public void insertGoods(GoodsVO gVO) throws Exception {
      insert("goodsMapper.insertGoods", gVO);
   }
   
   // 상품 등록
   public void insertGoodsFile(GoodsFileVO gfVO) throws Exception {
      insert("goodsFileMapper.insertGoodsFile", gfVO);
   }
   
   // seller별 goodsList 출력 
   public List<GoodsVO> selectSellerGoodsList(GoodsVO gVO) throws Exception {
      return selectList("goodsMapper.selectSellerGoodsList", gVO);
   }
   
   // seller goods count
   public Integer selectSellerGoodsCount(GoodsVO gVO) throws Exception {
      return selectOne("goodsMapper.selectSellerGoodsCount", gVO);
   }
   
   // 상품 삭제
   public int deleteGoods(String goodsId) throws Exception {
      return delete("goodsMapper.deleteGoods", goodsId);
   }
   
   // 상품 수정
   public int modifyGoods(GoodsVO gVO) throws Exception {
      return update("goodsMapper.modifyGoods", gVO);
   }
}