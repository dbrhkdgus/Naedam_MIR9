<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="자주쓰는 옵션" name="title"/>
</jsp:include>

<!-- content-wrapper -->
<div class="content-wrapper">
<section class="content-header">
    <h1>
    자주쓰는 옵션 관리
    <small>option list</small>
    </h1>

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">자주쓰는 옵션 관리</li>
    </ol>
</section>


<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                    <div class="row" style="margin:0 0 5px 0;">
						<div class="col-xs-6">&nbsp;</div>

						<div class="col-xs-6" style="padding:0">
							<div class="btn-group pull-right">
		  <button type="button" id="locale_ko" onclick="setLocale('ko')" class="btn btn-primary"><i class="fa fa-globe" aria-hidden="true"></i> 한국어</button>  <button type="button" id="locale_en" onclick="setLocale('en')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> ENG</button>  <button type="button" id="locale_zh" onclick="setLocale('zh')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> 中国</button>  <button type="button" id="locale_vn" onclick="setLocale('vn')" class="btn btn-default"><i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt</button>							</div>
						</div>
					</div>
					<form name="form_list" method="post" action="?tpf=admin/product/process">
		            <input type="hidden" name="mode" id="mode" />
					<input type="hidden" name="locale" id="locale" value="ko" />

                    <table class="table table-bordered table-hover">
						<colgroup>
							<col width="30px" />
							<col width="30%" />
							<col width="*" />
							<col width="10%" />
						</colgroup>
                    <thead>
                    <tr>
                        <td><input type="checkbox" name="select_all" onclick=selectAllCheckBox('form_list'); /></td>
                        <td>옵션명</td>
                        <td>옵션값</td>
                        <td>명령</td>
                    </tr>
                    </thead>
      <tr>
                        <td><input type="checkbox" name="list[]" value="9" /></td>
                        <td>악세사리</td>
                        <td>2단, 3단, 4단</td>
                        <td>
							<button type="button" onclick="onclickUpdate(9);" class="btn btn-primary btn-xs">수정하기</button>
						</td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="8" /></td>
                        <td>색상</td>
                        <td>빨강, 노랑, 파랑</td>
                        <td>
							<button type="button" onclick="onclickUpdate(8);" class="btn btn-primary btn-xs">수정하기</button>
						</td>
                    </tr>      <tr>
                        <td><input type="checkbox" name="list[]" value="7" /></td>
                        <td>사이즈</td>
                        <td>S, L, XL</td>
                        <td>
							<button type="button" onclick="onclickUpdate(7);" class="btn btn-primary btn-xs">수정하기</button>
						</td>
                    </tr>                    </form>
                    </table>
                    <br>

                    <button type="button" onclick="selectDelete('deleteOptionBank');" class="btn btn-danger btn-sm"><i class="fa fa-minus-square" aria-hidden="true"></i> 선택삭제</button>
                    <button type="button" onclick="onclickInsert();" class="btn btn-primary btn-sm"><i class="fa fa-plus-square"></i> 옵션 등록</button>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col-xs-12 -->
    </div><!-- /.row -->
</section>


<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:1000px;height:700px;">
        <div class="modal-content">
			<div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="modal-title-item">상품 기본옵션 관리</h4>
            </div>
            <div class="modal-body">
			<form name="form_register" method="post" onsubmit="return false;" action="?tpf=admin/product/process">
				<input type="hidden" name="mode" id="mode" value="insertOptionBank">
				<input type="hidden" name="code" id="code">
				<input type="hidden" name="locale" value="ko">
				<table class="table table-bordered">
					<tr>
						<td class="menu">옵션명</td>
						<td align="left"><input type="text" name="option_name" id="option_name" class="form-control input-sm" placeholder="예)사이즈"  /></td>
					</tr>
					<tr>
						<td class="menu">옵션값</td>
						<td align="left">
							<ul id="list_option" style="list-style:none;padding-left:0;margin-bottom:0;">
								<li class="first_item">
									<input type="text" name="option_value[]" class="form-control input-sm" placeholder="옵션값" style="width:40%; display:inline; margin-bottom:10px;">
									<input type="text" name="option_price[]" class="form-control input-sm" placeholder="추가 가격(숫자만 입력)" onkeyup="this.value=displayComma(checkAmountNum(this.value))"  style="width:30%; display:inline; margin-bottom:10px;">
									<button type="button" class="btn btn-primary btn-xs" onclick="addOption();"><span class="glyphicon glyphicon-plus"></span> 옵션값 추가</button>
								</li>
							</ul>
							※ 상품 등록 시 기본 입력될 옵션 값입니다.
						</td>
					</tr>
				</table>
			</form>
            </div>
			<div class="modal-footer">
				<button type="button" onclick="register();" class="btn btn-primary">저장하기</button>
            </div>
        </div>
    </div>
</div>

<div id="list_option_tag" class="sr-only">
	<li>
		<input type="text" name="option_value[]" class="form-control input-sm" placeholder="옵션값" style="width:40%; display:inline; margin-bottom:10px;">
		<input type="text" name="option_price[]" class="form-control input-sm" placeholder="추가 가격(숫자만 입력)" onkeyup="this.value=displayComma(checkAmountNum(this.value))" style="width:30%; display:inline; margin-bottom:10px;">
		<button type="button" class="btn btn-danger btn-xs" onclick="removeOption(this);"><span class="fa fa-minus-square"></span> 옵션값 제거</button>
	</li>
</div>
</div><!-- /.content-wrapper -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>