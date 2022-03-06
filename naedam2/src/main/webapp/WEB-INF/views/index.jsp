<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.7 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/76afde4c0b.js" crossorigin="anonymous"></script>
<!-- Ionicons -->
<script src="https://unpkg.com/ionicons@4.4.1/dist/ionicons.js"></script>
<!-- jvectormap -->
<link rel="stylesheet" href="/resources/css/jquery.vector-map.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="/resources/css/_all-skins.min.css">
<link href="/resources/css/admin.css" rel="stylesheet" type="text/css" />
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- fullcalendar -->
<link href="//mir9.co.kr/resource/css/bootstrap-colorselector.css" rel="stylesheet" />
<link href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet" type="text/css" />
<link href="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- Google Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-red sidebar-mini">
<iframe name="iframe_process" width="0" height="0" frameborder="0" style="display:none;"></iframe>

<div class="wrapper">

<!-- header -->
<header class="main-header">
    <a href="/admin" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini"><b>A</b></span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><b>MIR9 SHOP Admin</b></span>
    </a>

    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
            <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="https://mir9.co.kr/resource/js/AdminLTE-2.4.2/dist/img/avatar5.png" class="user-image" alt="User Image"/>
                <span class="hidden-xs">길동이</span>
            </a>
            <ul class="dropdown-menu">
                <li class="user-header">
                    <img src="https://mir9.co.kr/resource/js/AdminLTE-2.4.2/dist/img/avatar5.png" class="img-circle" alt="User Image" />
                    <p>
                    길동이 - Web Administrator
                    <small>MIR9 SHOP 관리자</small>
                    </p>
                </li>
                <li class="user-footer">
                    <div class="pull-right">
                        <a href="?tpf=member/logout" class="btn btn-danger btn-flat">Sign out</a>
                    </div>
                </li>
            </ul>
            </li>
        </ul>
        </div>
    </nav>
</header><!-- /.header -->

<!-- sidebar -->
<aside class="main-sidebar">
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <li>
                <a href="?tpf=admin/dashboard/list">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                <i class="fa fa-shopping-cart"></i> <span>주문 관리</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="?tpf=admin/order/list"><i class="fa fa-circle-o"></i> 주문 리스트</a></li>
                    <li><a href="https://iniweb.inicis.com/security/login.do" target="_new"><i class="fa fa-circle-o"></i> 이니시스 상점관리자</a></li>
                    <li><a href="?tpf=admin/order/log_list"><i class="fa fa-circle-o"></i>카드결제로그 리스트</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                <i class="fa fa-file-text-o"></i> <span>메뉴 관리</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="?tpf=admin/menu/list&menu=manager"><i class="fa fa-circle-o"></i> 메뉴 관리</a></li>
                    <li><a href="?tpf=admin/menu/head"><i class="fa fa-circle-o"></i> 헤더 관리</a></li>
                    <li><a href="?tpf=admin/menu/bottom"><i class="fa fa-circle-o"></i> 하단 관리</a></li>
                    <li><a href="?tpf=admin/menu/meta"><i class="fa fa-circle-o"></i> 메타 관리</a></li>
                </ul>
            </li>

            <li class="treeview">
                <a href="#">
                <i class="fa fa-list-alt"></i> <span>게시판 관리</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="index.php?tpf=admin/board/manage"><i class="fa fa-circle-o"></i> 리스트</a></li>
      <li><a href="index.php?tpf=admin/board/list&board_code=1"><i class="fa fa-circle-o"></i> 공지사항</a></li>      <li><a href="index.php?tpf=admin/board/list&board_code=2"><i class="fa fa-circle-o"></i> 자주하는 질문</a></li>      <li><a href="index.php?tpf=admin/board/list&board_code=3"><i class="fa fa-circle-o"></i> 1:1 문의</a></li>              </ul>
            </li>
            <li class="treeview">
                <a href="#">
                <i class="fa fa-gift"></i> <span>제품</span>  <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="?tpf=admin/product/list"><i class="fa fa-circle-o"></i> 리스트 </a></li>
                    <li><a href="?tpf=admin/product/category"><i class="fa fa-circle-o"></i> 카테고리 </a></li>
                    <li><a href="?tpf=admin/product/option_bank"><i class="fa fa-circle-o"></i> 자주쓰는 옵션 관리 </a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                <i class="fa fa-user"></i> <span>회원 관리</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="?tpf=admin/member/list"><i class="fa fa-circle-o"></i> 회원 리스트</a></li>
                    <li><a href="?tpf=admin/member/withdraw_list"><i class="fa fa-circle-o"></i> 탈퇴회원 리스트</a></li>
                    <li><a href="?tpf=admin/member/log"><i class="fa fa-circle-o"></i> 회원 접속이력 관리</a></li>
                    <li><a href="?tpf=admin/member/level"><i class="fa fa-circle-o"></i> 등급 관리</a></li>
                    <li><a href="?tpf=admin/member/point"><i class="fa fa-circle-o"></i> 회원 적립금 관리</a></li>
                </ul>
            </li>
            <li class="">
                <a href="?tpf=admin/schedule/list">
                <i class="fa fa-calendar"></i> <span>일정 관리</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                <i class="fa fa-check-square-o"></i> <span>폼메일 관리</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="index.php?tpf=admin/form/manage"><i class="fa fa-circle-o"></i> 리스트</a></li>
      <li><a href="index.php?tpf=admin/form/list&form_code=1"><i class="fa fa-circle-o"></i> 문의사항</a></li>              </ul>
            </li>
			<li class="treeview">
                <a href="#">
                <i class="fa fa-shopping-cart"></i> <span>통계</span>  <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="?tpf=admin/statistics/sales_day"><i class="fa fa-circle-o"></i>기간별 매출 통계 </a></li>
					<li><a href="?tpf=admin/statistics/sales_product"><i class="fa fa-circle-o"></i>제품별 매출 통계 </a></li>
					<li><a href="?tpf=admin/statistics/sales_member"><i class="fa fa-circle-o"></i>회원별 매출 통계 </a></li>
					<li><a href="?tpf=admin/statistics/sales_address_day"><i class="fa fa-circle-o"></i>지역별 매출 통계 </a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                <i class="fa fa-commenting"></i> <span>커뮤니티 관리</span>  <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="?tpf=admin/community/email"><i class="fa fa-circle-o"></i>메일 설정</a></li>
                    <li><a href="?tpf=admin/community/email_list"><i class="fa fa-circle-o"></i>메일 발송 내역</a></li>
                    <li><a href="?tpf=admin/community/sms"><i class="fa fa-circle-o"></i>SMS 설정</a></li>
                    <li><a href="?tpf=admin/community/sms_list"><i class="fa fa-circle-o"></i>SMS 발송 내역</a></li>
                    <li><a href="?tpf=admin/community/review"><i class="fa fa-circle-o"></i>주문후기 리스트</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                <i class="fa fa-gear"></i> <span>설정</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="?tpf=admin/setting/point"><i class="fa fa-circle-o"></i> 적립금 관리</a></li>
                    <li><a href="?tpf=admin/setting/coupon"><i class="fa fa-circle-o"></i> 쿠폰 관리</a></li>
<li><a href="?tpf=admin/setting/popup"><i class="fa fa-circle-o"></i> 팝업 관리</a></li><li><a href="?tpf=admin/setting/map"><i class="fa fa-circle-o"></i> 약도 관리</a></li><li><a href="?tpf=admin/setting/staff"><i class="fa fa-circle-o"></i> 임원 관리</a></li><li><a href="?tpf=admin/setting/history"><i class="fa fa-circle-o"></i> 연혁 관리</a></li><li><a href="?tpf=admin/setting/banner"><i class="fa fa-circle-o"></i> 배너 관리</a></li><li><a href="?tpf=admin/setting/contract"><i class="fa fa-circle-o"></i> 약관 관리</a></li>				<li><a href="?tpf=admin/setting/delivery_setting"><i class="fa fa-circle-o"></i> 배송 설정</a></li>
<li><a href="?tpf=admin/setting/delivery_company"><i class="fa fa-circle-o"></i> 택배사 관리</a></li><li><a href="?tpf=admin/setting/info"><i class="fa fa-circle-o"></i> 기본 설정</a></li><li><a href="?tpf=admin/setting/seo"><i class="fa fa-circle-o"></i> SEO 설정</a></li><li><a href="?tpf=admin/setting/paymentpg"><i class="fa fa-circle-o"></i> 결제PG 설정</a></li><li><a href="?tpf=admin/setting/snslogin"><i class="fa fa-circle-o"></i> SNS  연동 설정</a></li><li><a href="?tpf=admin/setting/locale"><i class="fa fa-circle-o"></i> 다국어 번역</a></li>                </ul>
            </li>
            <li>
                <a href="?tpf=admin/setting/version">
                <i class="fa fa-exclamation-circle"></i> <span>Version</span> <small class="label pull-right bg-green">2.8.1</small>
                </a>
            </li>
        </ul>
    </section>
</aside><!-- /.sidebar -->
<!-- content-wrapper -->
<div class="content-wrapper">
<style>
ul{
   list-style:none;
}

.nav-tabs-custom .list li:not(:last-child) {
    margin: 0 0 13px;
}

.cs-m-right20{
    margin-right: 20px;
    font-size: 14px;
    color: #97989b;
}
</style>

<section class="content-header">
<h1>
    Dashboard
    <small>쇼핑몰 운영현황</small>
</h1>

<ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li>Dashboard</li>
</ol>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
              <div class="box">
                <br>
                <div class="box-header with-border">
                  <h3 class="box-title">금일 매출 현황 (2022년 02월 25일)</h3>
                </div>
                <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-aqua">
                    <div class="inner">
                      <h3>0</h3>
                      <p>주문건</p>
                    </div>
                    <div class="icon">
                      <i class="fa fa-shopping-cart"></i>
                    </div>
                    <a class="small-box-footer" href="/index.php?tpf=admin/order/list">더보기 <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-green">
                    <div class="inner">
                      <h3>0</h3>
                      <p>입금완료</p>
                    </div>
                    <div class="icon">
                      <i class="fa fa-pie-chart"></i>
                    </div>
                    <a class="small-box-footer" href="/index.php?tpf=admin/order/list&payment_status=pay_done">더보기 <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-yellow">
                    <div class="inner">
                      <h3>0</h3>
                      <p>입금대기</p>
                    </div>
                    <div class="icon">
                      <i class="fa fa-files-o"></i>
                    </div>
                    <a class="small-box-footer" href="/index.php?tpf=admin/order/list&payment_status=pay_ready">더보기 <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-red">
                    <div class="inner">
                      <h3>1</h3>

                      <p>가입회원 수</p>
                    </div>
                    <div class="icon">
                      <i class="fa fa-user"></i>
                    </div>
                    <a class="small-box-footer" href="/index.php?tpf=admin/member/list">더보기 <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>
                <!-- ./col -->

                    <div class="box-header with-border">
                      <h3 class="box-title">월별 요약표</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                      <div class="row">
                        <div class="col-md-8">
                          <p class="text-center">
                            <strong>2022년</strong>
                          </p>

                          <div class="chart">
							<script>
								var chart_data = new Array();
								var dataRow = [];
								dataRow = ['Month', '판매금액'];
								chart_data.push(dataRow);
							</script>
<script>
		dataRow = ['1월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['2월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['3월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['4월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['5월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['6월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['7월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['8월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['9월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['10월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['11월', 0];
		chart_data.push(dataRow);
		</script><script>
		dataRow = ['12월', 0];
		chart_data.push(dataRow);
		</script>                            <div id="chart_div" style="width: 100%; height:  100%;"></div>

                            <!-- Sales Chart Canvas -->
                            <!-- <canvas width="964" height="180" id="salesChart" style="width: 964px; height: 180px;"></canvas> -->
                          </div>
                          <!-- /.chart-responsive -->
                        </div>
                        <!-- /.col -->
                        <div class="col-md-4">

                          <p class="text-center">
                            <strong>주문상태별 비율</strong>(최근 1개월)<!-- Goal Completion -->
                          </p>
						  <div class="chart">
							<script>
								var chart_data2 = new Array();
								var dataRow2 = [];
								dataRow2 = ['진행상태', '건수'];
								chart_data2.push(dataRow2);
							</script>
<script>
		dataRow2 = ['입금대기', 0];
		chart_data2.push(dataRow2);
		</script><script>
		dataRow2 = ['입금확인', 0];
		chart_data2.push(dataRow2);
		</script><script>
		dataRow2 = ['배송준비중', 0];
		chart_data2.push(dataRow2);
		</script><script>
		dataRow2 = ['배송중', 0];
		chart_data2.push(dataRow2);
		</script><script>
		dataRow2 = ['배송완료', 0];
		chart_data2.push(dataRow2);
		</script><script>
		dataRow2 = ['주문취소', 0];
		chart_data2.push(dataRow2);
		</script><script>
		dataRow2 = ['환불', 0];
		chart_data2.push(dataRow2);
		</script>                            <div id="chart_div2" style="width: 100%; height:  100%;"></div>

                            <!-- Sales Chart Canvas -->
                            <!-- <canvas width="964" height="180" id="salesChart" style="width: 964px; height: 180px;"></canvas> -->
                          </div>
                          <!-- <div class="progress-group">
                            <span class="progress-text">배송준비중</span>
                            <span class="progress-number"><b>4</b>/10</span>

                            <div class="progress sm">
                              <div class="progress-bar progress-bar-aqua" style="width: 40%;"></div>
                            </div>
                          </div>
                          <div class="progress-group">
                            <span class="progress-text">배송중</span>
                            <span class="progress-number"><b>2</b>/10</span>

                            <div class="progress sm">
                              <div class="progress-bar progress-bar-red" style="width: 20%;"></div>
                            </div>
                          </div>
                          <div class="progress-group">
                            <span class="progress-text">배송완료</span>
                            <span class="progress-number"><b>3</b>/10</span>

                            <div class="progress sm">
                              <div class="progress-bar progress-bar-green" style="width: 30%;"></div>
                            </div>
                          </div>
                          <div class="progress-group">
                            <span class="progress-text">주문취소</span>
                            <span class="progress-number"><b>1</b>/10</span>

                            <div class="progress sm">
                              <div class="progress-bar progress-bar-yellow" style="width: 10%;"></div>
                            </div>
                          </div> -->
                          <!-- /.progress-group -->

                        </div>
                        <!-- /.col -->
                      </div>
                      <!-- /.row -->
                    </div>
                    <!-- ./box-body -->
                    <div class="box-footer">
                      <div class="row">
                        <div class="col-sm-3 col-xs-6">
                          <div class="description-block border-right">
                            <span class="description-percentage text-green">총 누적판매액</span>
                            <h5 class="description-header">27,400</h5>
                            <span class="description-text">(원)</span>
                          </div>
                          <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-3 col-xs-6">
                          <div class="description-block border-right">
                            <span class="description-percentage text-yellow"><!--i class="fa fa-caret-left"></i--> 총 주문건수</span>
                            <h5 class="description-header">3</h5>
                            <span class="description-text">(건)</span>
                          </div>
                          <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-3 col-xs-6">
                          <div class="description-block border-right">
                            <span class="description-percentage text-green"><!--i class="fa fa-caret-up"></i--> 총 누적환불액</span>
                            <h5 class="description-header">0</h5>
                            <span class="description-text">(원)</span>
                          </div>
                          <!-- /.description-block -->
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-3 col-xs-6">
                          <div class="description-block">
                            <span class="description-percentage text-red">총 환불건수</span>
                            <h5 class="description-header">0</h5>
                            <span class="description-text">(건)</span>
                          </div>
                          <!-- /.description-block -->
                        </div>
                      </div>
                      <!-- /.row -->
                    </div>
                    <!-- /.box-footer -->
              </div>
              <!-- /.box -->
        </div>
        <!-- /.col-md-12 -->
    </div>
    <!-- /.row -->


    <div class="row">
        <div class="col-md-12">

            <div class="box">
                <div class="box-body">
                <div class="col-md-6">

                    <div class="box-header with-border">
                      <h3 class="box-title">최근 주문건</h3>
                    </div>
                    <!-- /.box-header -->

                    <table class="table table-bordered">
                      <thead>
                      <tr>
                        <th style="text-align:center;">주문번호</th>
                        <th style="text-align:center;">주문상품</th>
                        <th style="text-align:center;">진행상태</th>
                        <th style="text-align:center;">주문일시</th>
                      </tr>
                      </thead>
                      <tbody>
					  <tr>
                        <td><a href="/index.php?tpf=admin/order/list">200221_100335502</a></td>
                        <td>하루다섯팩</td>
                        <td><span class="label label-info">입금대기</span></td>
                        <td>2020/02/21 10:03</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/order/list">200219_163444881</a></td>
                        <td>하루한팩 (보임)</td>
                        <td><span class="label label-success">배송완료</span></td>
                        <td>2020/02/19 16:35</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/order/list">200213_104244389</a></td>
                        <td>하루다섯팩</td>
                        <td><span class="label label-success">배송중</span></td>
                        <td>2020/02/13 10:42</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/order/list">200213_104111821</a></td>
                        <td>하루다섯팩</td>
                        <td><span class="label label-warning">입금확인</span></td>
                        <td>2020/02/13 10:41</td>
                      </tr>
					  </tbody>
                    </table>
                </div>                <!-- ./col-md-6 -->

                <div class="col-md-6">

                    <div class="box-header with-border">
                      <h3 class="box-title">최근 등록상품</h3>
                    </div>
                    <!-- /.box-header -->

                    <table class="table table-bordered">
                      <thead>
                      <tr>
                        <th style="text-align:center;">상품코드</th>
                        <th style="text-align:center;">상품명</th>
                        <th style="text-align:center;">카테고리</th>
                        <th style="text-align:center;">등록일자</th>
                      </tr>
                      </thead>
                      <tbody>
					  <tr>
                        <td><a href="/index.php?tpf=admin/product/list">모델명34</a></td>
                        <td>상품명23 (BEST,NEW - 보임)</td>
                        <td>Dental Treats sub - sub</td>
                        <td>2021-12-10</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/product/list">하루모델</a></td>
                        <td>하루다섯팩</td>
                        <td>Dental Treats sub - sub</td>
                        <td>2020-01-29</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/product/list">로즈플라워</a></td>
                        <td>로즈플라워캔들</td>
                        <td>Dental Treats sub - sub</td>
                        <td>2020-01-13</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/product/list">Yellow&Brown Oriental</a></td>
                        <td>Yellow&Brown Oriental</td>
                        <td>Dental Treats sub - sub</td>
                        <td>2020-01-08</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/product/list">Dental Treats sub - sub</a></td>
                        <td>상품명 500 (best,event-숨김)</td>
                        <td>Dental Treats sub - sub</td>
                        <td>2019-10-29</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/product/list">하루한팩</a></td>
                        <td>하루한팩 (보임)</td>
                        <td>Dental Treats sub - sub</td>
                        <td>2019-07-13</td>
                      </tr>
					  <tr>
                        <td><a href="/index.php?tpf=admin/product/list">모델명34</a></td>
                        <td>상품명23 (BEST,NEW - 보임)</td>
                        <td>Dental Treats sub - sub</td>
                        <td>2019-06-21</td>
                      </tr>
                      </tbody>
                    </table>
                </div><!-- ./col-md-6 -->


                </div><!-- /.box-body -->
            </div><!-- /.box -->

        </div>
        <!-- /.col-md-12 -->
    </div>
    <!-- /.row -->

    <div class="row">
        <div class="col-md-4">
            <div class="small-box bg-aqua">
                <div class="inner">
                <h4>결제PG 신청</h4>
                <li>엑심베이(PayPal, 중국, 일본, 동남아 결제)</li>
                <li>이니시스</li>
                </div>
                <div class="icon">
                <i class="fa fa-credit-card"></i>
                </div>
                <a class="small-box-footer" href="/index.php?tpf=admin/setting/paymentpg">신청하기 <i class="fa fa-arrow-circle-right"></i></a>
            </div>

            <div style="text-align:center;">
            <a href="/index.php?tpf=admin/product/list" class="btn btn-default btn-lg"><i class="fa fa-gift"></i> 상품 관리</a>
            <a href="/index.php?tpf=admin/setting/point" class="btn btn-default btn-lg"><i class="fa fa-dollar"></i> 적립금 관리</a>
            <a href="/index.php?tpf=admin/setting/coupon" class="btn btn-default btn-lg"><i class="fa fa-credit-card"></i> 쿠폰 관리</a>
            </div>
        </div>

        <div class="col-md-8">

          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
			  <li class="active"><a aria-expanded="true" href="#tab_1" data-toggle="tab">공지사항</a></li>
			  <li class=""><a aria-expanded="true" href="#tab_2" data-toggle="tab">자주하는 질문</a></li>
			  <li class=""><a aria-expanded="true" href="#tab_3" data-toggle="tab">1:1 문의</a></li>
              <li class="pull-right"><a class="text-muted" href="/index.php?tpf=admin/board/list&board_code=1">더보기 <i class="fa fa-arrow-circle-right"></i></a></li>
            </ul>
            <div class="tab-content">
			  <div class="tab-pane active" id="tab_1">
                <ul class="list">
                    <li><a href="/index.php?tpf=admin/board/list&board_code=1">공지사항<span class="pull-right cs-m-right20">2020-02-06</span></a></li>
                </ul>
              </div>
			  <div class="tab-pane " id="tab_2">
                <ul class="list">
                    <li>등록된 게시물이 없습니다.</li>                </ul>
              </div>
			  <div class="tab-pane " id="tab_3">
                <ul class="list">
                    <li>등록된 게시물이 없습니다.</li>                </ul>
              </div>
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col-md-12 -->
    </div>
    <!-- /.row -->
</section>
</div><!-- /.content-wrapper -->

<footer class="main-footer">
<div class="pull-right hidden-xs">
    <b>Version</b> 2.7.4
</div>
<strong>Copyright &copy; 2017 <a href="/admin">MIR9 SHOP</a>.</strong> All rights reserved.
</footer>
</div>

<!-- jQuery 3 -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/dist/js/adminlte.min.js"></script>
<!-- Sparkline -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap  -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/chart.js/Chart.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/dist/js/demo.js"></script>
<script src="//mir9.co.kr/resource/js/jquery/jquery-ui.min.js"></script>
<script src="/resources/js/common.js" type="text/javascript" charset="utf-8"></script>
<!-- fullcalendar -->
<script src="//mir9.co.kr/resource/js/bootstrap-colorselector.js"></script>
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fullcalendar/dist/fullcalendar.moment.min.js" type="text/javascript"></script>
<script src="//mir9.co.kr/resource/js/AdminLTE-2.4.2/bower_components/fullcalendar/dist/fullcalendar.min.js" type="text/javascript"></script>


<script language='javascript' src='//www.gstatic.com/charts/loader.js'></script>
<script>
			function drawChart() {
				var data = google.visualization.arrayToDataTable(chart_data);

				var options = {
				  title: '(금액:천단위)',
				  legend: {textStyle: {bold: false, color: 'black', fontSize: 13}},
				  hAxis: {title: '',  titleTextStyle: {color: '#333'}},
				  vAxis: {minValue: 0}
				};

				var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
				chart.draw(data, options);
			}

			function drawChart2() {

				var data = google.visualization.arrayToDataTable(chart_data2);
				var options = {
					title: "",
					pieHole : 0.4,
				};

				var chart = new google.visualization.PieChart(document.getElementById("chart_div2"));
				chart.draw(data, options);
			}
			$(function() {
				google.charts.load("current", {packages:['corechart']});
				google.charts.setOnLoadCallback(drawChart);
				google.charts.setOnLoadCallback(drawChart2);
			});
		
</script>
</body>
</html>