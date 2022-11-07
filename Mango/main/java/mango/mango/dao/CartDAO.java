package mango.mango.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mango.common.service.impl.ComAbstractDAO;
import mango.mango.model.CartVO;

@Repository("CartDAO")
public class CartDAO extends ComAbstractDAO {
	public List<CartVO> selectAllCartList(CartVO cVO) throws Exception {
		return selectList("cartMapper.selectAllCartList", cVO);
	}

	// 카트 상품 등록
	public void insertCart(CartVO cVO) throws Exception {
		insert("cartMapper.insertCart", cVO);
	}

	// 카트 상품 수량 수정
	public void modifyCount(CartVO cVO) throws Exception {
		update("cartMapper.modifyCount", cVO);
	}

	// 카트 상품 삭제
	public void deleteCart(String cartId) throws Exception {
		delete("cartMapper.deleteCart", cartId);
	}

	// 카트 전체 상품 삭제
	public void deleteAllCart(String id) throws Exception {
		delete("cartMapper.deleteAllCart", id);
	}

	// 카트 조회
	public String getCartId(String cartId) throws Exception {
		return selectOne("cartMapper.getCartId", cartId);
	}

}