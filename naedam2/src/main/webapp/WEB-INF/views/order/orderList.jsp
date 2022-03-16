<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="주문 관리" name="title"/>
</jsp:include>
<!-- content-wrapper -->
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			주문 관리 <small>order list</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">주문 관리</a></li>
			<li class="active">Data tables</li>
		</ol>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-body">
						<form name="form_search" id="form_search" method="post" action="/order/list">
							<table class="table table-bordered" style="margin-bottom: 0;">
								<tbody>
									<tr>
										<td class="menu">진행상태</td>
										<td align="left"><select name="order_status"
											class="form-control input-sm"
											style="float: left; width: 130px; margin-right: 5px;">
												<option value="">상태</option>
												<c:forEach var="orderStatus" items="${orderStatusList }">
													<option value="${orderStatus.status }">${orderStatus.statusName }</option>
												</c:forEach>
										</select></td>
										<td class="menu">기간 검색</td>
										<td align="left"><input type="text" name="start_date"
											id="start_date" value=""
											class="form-control input-sm txt_date1"
											style="width: 100px; display: inline-block;" /> ~ <input
											type="text" name="end_date" id="end_date" value=""
											class="form-control input-sm txt_date1"
											style="width: 100px; display: inline-block;" />

											<button type="button" onclick="setSearchDate('D0');"
												class="btn btn-primary btn-xs">오늘</button>
											<button type="button" onclick="setSearchDate('D7');"
												class="btn btn-primary btn-xs">7일</button>
											<button type="button" onclick="setSearchDate('D15');"
												class="btn btn-primary btn-xs">15일</button>
											<button type="button" onclick="setSearchDate('M1');"
												class="btn btn-primary btn-xs">1개월</button>
											<button type="button" onclick="setSearchDate('M3');"
												class="btn btn-primary btn-xs">3개월</button>
											<button type="button" onclick="setSearchDate('M6');"
												class="btn btn-primary btn-xs">6개월</button></td>
									</tr>
									<tr>
										<td class="menu">결제방법</td>
										<td align="left"><select name="payment_type"
											class="form-control input-sm"
											style="float: left; width: 130px; margin-right: 5px;">
												<option value="">결제방법</option>
												<option value="cash">무통장</option>
												<option value="card">신용카드</option>
										</select></td>
										<td class="menu">키워드</td>
										<td align="left"><select name="field"
											class="form-control input-sm"
											style="float: left; padding-right: 0; width: 130px;">
												<option value="m.last_name || m.first_name">주문자 성명</option>
												<option value="i.reciever">수취인 성명</option>
												<option value="m.phone">휴대폰</option>
												<option value="o.order_no">주문번호</option>
										</select> <input type="text" name="keyword" id="keyword" value=""
											class="form-control input-sm" placeholder="주문검색"
											style="width: 50%; padding-left: 5px;" /></td>
									</tr>
								</tbody>
								<tfooter>
								<tr>
									<td colspan="4" style="text-align: center;">
										<button type="button" onclick="selectAction();"
											class="btn btn-danger btn-sm">
											<i class="fa "></i>검색
										</button>
									</td>
								</tr>
								</tfooter>
							</table>
						</form>

						<label style="margin-top: 5px;">총 ${orderCnt } 건</label>
						<table class="table table-bordered table-hover">
							<form name="form_list" method="post"
								action="?tpf=admin/order/process">
								<input type="hidden" name="mode" id="mode"> <input
									type="hidden" name="search_data">
								<thead>
									<tr>
										<td style="width: 30px;"><input type="checkbox"
											name="select_all" onclick=selectAllCheckBox( 'form_list'); /></td>
										<td style="width: 160px;">주문번호</td>
										<td style="width: 140px;">주문일자</td>
										<td>상품명</td>
										<td style="width: 90px;">주문자</td>
										<td style="width: 110px;">연락처</td>
										<td style="width: 80px;">결제금액</td>
										<td style="width: 80px;">결제방법</td>
										<td style="width: 120px;">결제일</td>
										<td style="width: 90px;">상태</td>
										<td style="width: 60px;">명령</td>
									</tr>
								</thead>
								<c:forEach var="order" items="${orderList }">
									<tr>
										<td><input type="checkbox" name="list[]" value="20" /></td>
										<td>${fn:substring(order.orderNo,0,6) }-${fn:substring(order.orderNo,7,15) }</td>
										<td><fmt:formatDate value="${order.orderDate}" pattern="yyyy-MM-dd"/></td>
										<td align="left">${order.productName }</td>
										<td>${order.memberName }</td>
										<td>${order.phone }</td>
										<td align="right" style="color: #ff0505; font-weight: bold">2,000</td>
										<td>무통장</td>
										<td>2022/03/02 12:18</td>
										<td style="font-weight: bold">${order.status == 'W' ? '결제 대기':'' }</td>
										<td><button type="button" onclick="onclick_update(${order.orderNo});" class="btn btn-primary btn-xs">보기</button></td>
									</tr>
								</c:forEach>
								
							</form>
						</table>
						<br>

						<button type="button" onclick="selectDelete();"
							class="btn btn-danger btn-sm">
							<i class="fa fa-minus-square"></i> 선택삭제
						</button>
						<button type="button" onclick="downloadExcel();"
							class="btn btn-warning btn-sm">
							<i class="fa" aria-hidden="true"></i> Excel 다운로드
						</button>
						<form name="form_download" method="post"
							action="?tpf=admin/order/process">
							<input type="hidden" name="mode" value="downloadExcel"> <input
								type="hidden" name="search_data">
						</form>

						<div style="text-align: right;">
							<ul class="pagination" style="margin: 0;">
								<li class="active"><a
									href="?tpf=admin/order/list&start_date=&end_date=&page=1">1</a></li>
							</ul>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col-xs-12 -->
		</div>
		<!-- /.row -->
	</section>

	<div class="modal fade" id="modalContent" tabindex="-2" role="dialog"
		aria-labelledby="myModal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form name="form_register" method="post"
					action="?tpf=admin/order/process">
					<input type="hidden" name="mode" id="mode"
						value="update_payment_status"> <input type="hidden"
						name="payment_code" id="payment_code">

					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabelPortfolio">주문내역 상세 보기</h4>
					</div>
					<div class="modal-body">
						<h4>
							<p class="text-light-blue">
								<i class="fa fa-fw fa-info-circle"></i> 구매 내역
							</p>
						</h4>

						<span id="order_list_txt"></span>
						<table class="table table-bordered">
							<thead>
								<tr>
									<td style="width: 350px;">상품명</td>
									<td>가격(원)</td>
									<td>수량(개)</td>
									<td style="width: 120px;">합계(원)</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td style="text-align: left;">
										<img src="http://demoshop.mir9.kr/user/product/288_1.png" alt="" style="float: left; margin-right: 10px; width: 120px;'"/>
										"로즈플라워캔들"
										<br />
										" - 사이즈 : S (+ 1,000)"
										<br />
										" - 색상 : 빨강"
										<br />
										" - 악세사리 : null"
									</td>
									<td class="money">1,000</td>
									<td class="count">1</td>
									<td class="money">
										<span class="text-light-blie">2,000</span>
									</td>
								</tr>
								<tr>
									<td colspan="3" class="money">상품합계</td>
									<td class="money">2,000</td>
								</tr>
								<tr>
									<td colspan="3" class="money">배송료</td>
									<td class="money">0</td>
								</tr>
								<tr>
									<td colspan="3" class="money">총 결제금액</td>
									<td class="money">
										<span class="red_16_b">
											<b>2,000</b>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="col-xs-5" style="padding: 0 5px 0 0;">
							<h4>
								<p class="text-light-blue">
									<i class="fa fa-fw fa-info-circle"></i> 결제 정보
								</p>
							</h4>
							<table class="table table-bordered">
								<tr>
									<td class="menu">주문자</td>
									<td align="left"><span id="order_name"></span></td>
								</tr>
								<tr>
									<td class="menu">주문자 휴대폰</td>
									<td align="left"><span id="order_mobile"></span></td>
								</tr>
								<tr>
									<td class="menu">주문번호</td>
									<td align="left"><span id="order_number"></span></td>
								</tr>
								<tr>
									<td class="menu">결제금액</td>
									<td align="left"><span id="total_price"></span> 원</td>
								</tr>
								<tr>
									<td class="menu">결제방법</td>
									<td align="left"><span id="payment_type"></span></td>
								</tr>
								<tr>
									<td class="menu">입금계좌번호</td>
									<td align="left"><span id="bank_account"></span></td>
								</tr>
								<tr>
									<td class="menu">입금은행명</td>
									<td align="left"><span id="bank_name"></span></td>
								</tr>
								<tr>
									<td class="menu">예금주명</td>
									<td align="left"><span id="bank_depositor"></span></td>
								</tr>
								<tr>
									<td class="menu">입금자명</td>
									<td align="left"><span id="pay_name"></span></td>
								</tr>
							</table>
						</div>

						<div class="col-xs-7" style="padding: 0 0 0 5px;">
							<h4>
								<p class="text-light-blue">
									<i class="fa fa-fw fa-info-circle"></i> 수취인 정보
								</p>
							</h4>
							<table class="table table-bordered">
								<tr>
									<td class="menu">수취인 성명</td>
									<td align="left"><span id="receiver_name"></span></td>
								</tr>
								<tr>
									<td class="menu">휴대폰</td>
									<td align="left"><span id="receiver_mobile"></span></td>
								</tr>
								<tr>
									<td class="menu">배송지 주소</td>
									<td align="left"><span id="receiver_addr"></span></td>
								</tr>
								<tr>
									<td class="menu">메모</td>
									<td align="left"><span id="request_message"></span></td>
								</tr>
								<tr>
									<td class="menu">관리자 메모</td>
									<td align="left"><span style="float: left"> <textarea
												name="memo" id="memo" class="form-control input-sm" rows="5"
												style="width: 200px;"></textarea>
									</span> <span style="padding: 20px 0 0 10px; float: left">
											<button type="button" onclick="updateMemo()"
												class="btn btn-primary btn-sm">
												저장<br>하기
											</button>
									</span></td>
								</tr>
								<tr>
									<td class="menu">상태</td>
									<td align="left"><span style="float: left"> <input
											type="text" name="delivery_code" id="delivery_code"
											class="form-control input-sm"
											style="float: left; margin-right: 2px; width: 100px;"
											placeholder="송장번호"> <select name="payment_status"
											id="payment_status" class="form-control input-sm"
											style="width: 90px; padding: 0;">
												<option value="pay_ready">입금대기</option>
												<option value="pay_done">입금확인</option>
												<option value="delivery_ready">배송준비중</option>
												<option value="delivery_ing">배송중</option>
												<option value="delivery_done">배송완료</option>
												<option value="order_cancel">주문취소</option>
												<option value="refund">환불</option>
										</select>
									</span> <span style="padding-left: 10px; float: left"><button
												type="button" onclick="updatePaymentStatus()"
												class="btn btn-primary btn-sm">저장하기</button></span></td>
								</tr>
							</table>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- /.content-wrapper -->

<script>
	<!-- 모달창 제어 -->
	function onclick_update(orderNo){
		console.log(orderNo);
		$.ajax({
			//url: `\${restServerUrl}/menus`,
			url:`${pageContext.request.contextPath}/order/orderDetail`,
			data:{
				orderNo : orderNo
			},
			method: "GET",
			success(data){
				
			},
			error: console.log
		});  	
		$("#modalContent").modal('show');
	}
	
	
	function selectAction(){
		if($("select[name=order_status]").val() == '' & $("select[name=payment_type]").val() == '' & $("input[name=keyword]").val() == '' & ($("input[name=start_date]").val() == '' & $("input[name=end_date]").val() == '')){
			return false;
		}else{
			$(document["form_search"]).submit();
		}
		
	}

	function setSearchDate(type){
		console.log(type)
		console.log(type.slice(1,3));
		$("input[name=start_date]").val(dateStr(type));
		$("input[name=end_date]").val(dateStr('D0'));

		
	}
	
	function dateStr(type){
		var date = new Date();
		i = type.slice(1,3) * 1;
		if(type.slice(0,1) == 'D'){
			date = new Date(date-(60 * 60 * 24 * i));
		}else if(type.slice(0,1) == 'M'){
			date.setMonth(date.getMonth() - i);
		}
			var year = date.getFullYear();
			var month = ('0' + (date.getMonth() + 1)).slice(-2);
			var day = ('0' + (date.getDate() - i)).slice(-2);
			var dateString = year + '-' + month  + '-' + day;	
		return dateString;
	}

</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>