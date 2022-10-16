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

	// 카트 상품 수정
	public int modifyCount(CartVO cVO) throws Exception {
		return update("cartMapper.modifyCount", cVO);
	}

	// 카트 상품 삭제
	public int deleteCart(int cartId) throws Exception {
		return delete("cartMapper.deleteCart", cartId);
	}

}