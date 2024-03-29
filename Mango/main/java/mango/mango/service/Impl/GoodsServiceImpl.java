package mango.mango.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import mango.mango.dao.GoodsDAO;
import mango.mango.model.GoodsFileVO;
import mango.mango.model.GoodsVO;
import mango.mango.service.GoodsService;

@Service("GoodsService")
public class GoodsServiceImpl extends EgovAbstractServiceImpl implements GoodsService {
   @Resource(name = "GoodsDAO")
   private GoodsDAO goodsDAO;
   
   @Override
   public List<GoodsVO> selectCatList(GoodsVO gVO) throws Exception{
	   return goodsDAO.selectCatList(gVO);
   }
   
   @Override
   public List<GoodsVO> selectAllGoodsList(GoodsVO gVO) throws Exception {
      return goodsDAO.selectAllGoodsList(gVO);
   }
   
   @Override
   public List<GoodsVO> selectOneGoods(GoodsVO gVO) throws Exception {
	   return goodsDAO.selectOneGoods(gVO);
   }
   
   @Override
   public List<GoodsFileVO> selectAllGoodsFileList(GoodsFileVO gfVO) throws Exception{
	   return goodsDAO.selectAllGoodsFileList(gfVO);
   }
   
   @Override
   public Integer selectAllGoodsCount(GoodsVO gVO) throws Exception {
      return goodsDAO.selectAllGoodsCount(gVO);
   }

   @Override
   public GoodsVO selectGoodsDetailList(String goodsId) throws Exception {
      return goodsDAO.selectGoodsDetailList(goodsId);
   }

   @Override
   public void insertGoods(GoodsVO gVO) throws Exception {
      goodsDAO.insertGoods(gVO);
   }
   
   @Override
   public void insertGoodsFile(GoodsFileVO gfVO) throws Exception {
	   goodsDAO.insertGoodsFile(gfVO);
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
   public void deleteGoods(String goodsId) throws Exception {
      goodsDAO.deleteGoods(goodsId);
   }

   @Override
   public void modifyGoods(GoodsVO gVO) throws Exception {
       goodsDAO.modifyGoods(gVO);
   }
   
   @Override
   public void adminModifyGoods(GoodsVO gVO) throws Exception {
	   goodsDAO.adminModifyGoods(gVO);
   }
   
   @Override
   public List<GoodsVO> selectNotApprovedList(GoodsVO gVO) throws Exception {
	   return goodsDAO.selectNotApprovedList(gVO);
   }
   
   @Override
   public Integer selectNotApprovedCount(GoodsVO gVO) throws Exception {
      return goodsDAO.selectNotApprovedCount(gVO);
   }
   
   @Override
   public void updateApproved(GoodsVO gVO) throws Exception {
	   goodsDAO.updateApproved(gVO);
   }
   
   @Override
   public List<GoodsVO> selectAdminAllList(GoodsVO gVO) throws Exception {
      return goodsDAO.selectAdminAllList(gVO);
   }
}