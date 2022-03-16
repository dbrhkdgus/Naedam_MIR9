package com.naedam.mir9.order.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderWithNames extends Order {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String productName;
	private String memberName;
	private String phone;
	private String payType;
	private Date payDate;
	private String status;
	
	public OrderWithNames(long orderNo, int memberNo, int productNo, int orderStatusNo, Date orderDate,
			String productName, String memberName, String phone, String payType, Date payDate, String status) {
		super(orderNo, memberNo, productNo, orderStatusNo, orderDate);
		this.productName = productName;
		this.memberName = memberName;
		this.phone = phone;
		this.payType = payType;
		this.payDate = payDate;
		this.status = status;
	}

	
	
	
	

}
