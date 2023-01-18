<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  


<style>
/*카테고리  width: 1170px;  width:1883px; height: 80px;  transform: translate(-12px, 0px); margin-left:290px;*/
#cate{background-color:#fff; transform: translate(300px, -130px);/*가로/세로*/
width:1186px; height: 70px; font-size: 30px; font-weight:bold;}
#cate > ul > li{float:left; margin-right:40px;margin-left:40px; line-height: 70px; }
#cate > ul > li > a{}
</style>


<nav>
<ul>

<c:choose>
<c:when test="${side_menu=='admin_mode' }">
   <li>
		<H3>주요기능</H3>
		<ul>
			<li><a href="${contextPath}/admin/goods/adminGoodsMain.do">상품관리</a></li>
			<li><a href="${contextPath}/admin/order/adminOrderMain.do">주문관리</a></li>
			<li><a href="${contextPath}/admin/member/adminMemberMain.do">회원관리</a></li>
			<li><a href="#">배송관리</a></li>
			<li><a href="#">게시판관리</a></li>
		</ul>
	</li>
</c:when>
<c:when test="${side_menu=='my_page' }">
<%-- 	<li>
		<h3>주문내역</h3>
		<ul>
			<li><a href="${contextPath}/mypage/listMyOrderHistory.do">주문내역/배송 조회</a></li>
			<li><a href="#">반품/교환 신청 및 조회</a></li>
			<li><a href="#">취소 주문 내역</a></li>
			<li><a href="#">세금 계산서</a></li>
		</ul>
	</li>
	<li>
		<h3>정보내역</h3>
		<ul>
			<li><a href="${contextPath}/mypage/myDetailInfo.do">회원정보관리</a></li>
			<li><a href="#">나의 주소록</a></li>
			<li><a href="#">개인정보 동의내역</a></li>
			<li><a href="#">회원탈퇴</a></li>
		</ul>
	</li> --%>
	<li>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마이페이지</h3>
		<ul>
			<li><a href="${contextPath}/mypage/listMyOrderHistory.do">주문내역/배송 조회</a></li>
			<li><a href="#">포인트</a></li>
			<li><a href="${contextPath}/mypage/myDetailInfo.do">회원정보관리</a></li>
			<li><a href="#">회원탈퇴</a></li>
		</ul>
</c:when>
<c:when test="${side_menu=='board' }">	<!-- 06.17 sy) 기본 게시판 생성 후 고객센터와 연결 -->
	<li>
		<h3>게시판</h3>
		<ul>

			<li><a href="${contextPath}/board/noticeBo/listNoticeBoards.do">공지사항 게시판</a></li>
			<li><a href="${contextPath}/board/reViewBo/listreViewBoards.do">상품 후기</a></li>
			<li><a href="${contextPath}/board/qnaBo/listqnaBoards.do">문의사항 게시판</a></li>
			<li><a href="${contextPath}/board/freeBo/listFreeBoards.do">자유게시판</a></li>
		</ul>
	</li>									
</c:when>





<c:otherwise>
 	 <li id="cate">
		<!-- <h3>&nbsp;&nbsp;&nbsp;&nbsp;전체 카테고리</h3> -->
		<ul>
			<li><a href="${contextPath}/goods/goodsList1.do">NIKE</a></li>
			<li><a href="${contextPath}/goods/goodsList2.do">ADIDAS</a></li>
			<li><a href="${contextPath}/goods/goodsList3.do">NEWBAL</a></li>
			<li><a href="${contextPath}/goods/goodsList4.do">ASICS</a></li>
			<li><a href="${contextPath}/goods/goodsList5.do">PUMA</a></li>
			<li><a href="${contextPath}/goods/goodsList6.do">FILA</a></li>
		</ul>
	</li> 
 </c:otherwise>
</c:choose>	
</ul>
</nav>
<%-- <div class="clear"></div>
<div id="banner">
	<a href="#"><img width="190" height="163" src="${contextPath}/resources/image/n-pay.jpg"> </a>
</div>
<DIV id="notice">
	<H2>공지사항</H2>
	<UL>
	
	<c:forEach  var="i" begin="1" end="5" step="1">
		<li><a href="#">공지사항입니다.${ i}</a></li>
	</c:forEach>
	</ul>
</div> --%>


</html>