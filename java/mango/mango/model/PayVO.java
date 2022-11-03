package mango.mango.model;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@RequiredArgsConstructor
public class PayVO {
	private String id;
	private int reserveSequence;
	private String payDate;
	private String payMoney;

	public PayVO(String id, int reserveSequence, String payDate, String payMoney) {
		super();
		this.id = id;
		this.reserveSequence = reserveSequence;
		this.payDate = payDate;
		this.payMoney = payMoney;
	}

	@Override
	public String toString() {
		return "PayVO [id=" + id + ", reserveSequence=" + reserveSequence + ", payDate=" + payDate + ", payMoney=" + payMoney + "]";
	}

}