<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
	<span style="float: left;width: 49%;">
		<select>
			<option>-</option>
			<option>b</option>
		</select>
		
		<a href="./mainPage">11></a>
		
		<select>
			<option>통합검색</option>
			<option>b</option>
		</select>
		
		<input type="text">
		
		<a href=""><img alt="" src="resources/img/gumsak.jpeg"
			width="20" height="20"></a>
	</span>
					
	<span style="float: right;width: 49%;">			
		<a href=""><img alt="" src="resources/img/me.png"
			width="20" height="20"></a>
		<a href=""><img alt="" src="resources/img/baesong.jpg"
			width="20" height="20"></a>
			
		<a href="./basketedPage"><img alt="" src="resources/img/basket.png"
			width="20" height="20"></a>
			
		<a href="">dd</a>
	</span>			<br/>
		
	<span style="float: left;width: 49%;">
		<a href="">배송</a>
		<a href="">쇼킹딜</a>
		<a href="">베스트</a>
		<a href="">쿠폰/기획전</a>
		<a href="">장보기</a>
		<a href="">T공식대리점</a>
		<a href="">a</a>
		<a href="">아마존</a>
		<a href="">아마존 딜</a>
		<a href="">아마존 베스트</a>
	</span>	
		
	<span style="float: right;width: 49%;">			
		<a href="./loginPage">로그인</a>
		<a href="">바로가기OFF</a>
		<a href=""><img alt="" src="resources/img/language.png"
			width="10" height="10"></a>
	</span>		
	
</header>
<section>
	<div>
		<img alt="" src="resources/img/banner.jpg"
			width="1000px">
	</div>
	
	<div>
		<table>
			<tr>
				<td><a href="./detailPage?pnumber=1"><img alt="" src="resources/img/pic1.jpg" height="250" width="250"></a></td>
				<td><a href="./detailPage?pnumber=2"><img alt="" src="resources/img/pic2.jpg" height="250" width="250"></a></td>
				<td><a href="./detailPage?pnumber=3"><img alt="" src="resources/img/pic3.jpg" height="250" width="250"></a></td>
				<td><a href="./detailPage?pnumber=4"><img alt="" src="resources/img/pic4.jpg" height="250" width="250"></a></td>
			</tr>
			<tr>
				<td><a href="./detailPage?pnumber=5"><img alt="" src="resources/img/pic5.jpg" height="250" width="250"></a></td>
				<td><a href="./detailPage?pnumber=6"><img alt="" src="resources/img/pic6.jpg" height="250" width="250"></a></td>
				<td><a href="./detailPage?pnumber=7"><img alt="" src="resources/img/pic7.jpg" height="250" width="250"></a></td>
				<td><a href="./detailPage?pnumber=8"><img alt="" src="resources/img/pic8.jpg" height="250" width="250"></a></td>
			</tr>
		</table>
	</div>
	
	<div>
		<table>
			
				<tr>
					<c:forEach items="${list}" var="list" varStatus="i">
						<td><a href="./detailPage?pnumber=${list.pnumber}"><img alt="" src="${list.imageloc}" height="100" width="100"></a></td>
					</c:forEach>
				</tr>
			
		</table>
	</div>
	
	<div>
		<table>
			<tr>
				<td colspan="5">위메프 펼쳐보기</td>
			</tr>
			<tr>
				<td width="200px">특가</td>
				<td width="200px">기획전</td>
				<td width="200px">서비스</td>
				<td width="200px">혜택</td>
				<td width="200px">백화점.몰</td>
			</tr>
			<tr>
				<td><a href="">슈퍼투데이특가</a></td>
				<td><a href="">맛신선</a></td>
				<td><a href="">위메프 여행레저</a></td>
				<td><a href="">이벤트/쿠폰</a></td>
				<td><a href="">롯데백화점</a></td>
			</tr>
			<tr>
				<td><a href="">타임특가</a></td>
				<td><a href="">신규오픈</a></td>
				<td><a href="">위메프 공연티켓</a></td>
				<td><a href="">첫만남 웰컴찬스</a></td>
				<td><a href="">현대백화점</a></td>
			</tr>
			<tr>
				<td><a href="">패션특가</a></td>
				<td><a href="">패션뷰티위크</a></td>
				<td><a href="">마트당일배송</a></td>
				<td></td>
				<td><a href="">갤러리아</a></td>
			</tr>
			<tr>
				<td><a href="">푸드특가</a></td>
				<td><a href="">실시간최저가</a></td>
				<td><a href="">위메프오배달</a></td>
				<td></td>
				<td><a href="">AK플라자</a></td>
			</tr>
			<tr>
				<td><a href="">리빙뷰티특가</a></td>
				<td><a href="">투어컬쳐위크</a></td>
				<td></td>
				<td></td>
				<td><a href="">LF몰</a></td>
			</tr>
			<tr>
				<td><a href="">키즈특가</a></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td> <a href="">라이브특가</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div><br/><br/>
</section>
<footer>
	<span style="width: 1000px">
		<a href="">기업소개</a>
		<a href="">위메프로그</a>
		<a href="">인재채용</a>
		<a href="">이용약관</a>
		<a href="">판매이용약관</a>
		<a href="">전자금융거래약관</a>
		<a href="">개인정보처리방침</a>
		<a href="">청소년보호정책</a>
		<a href="">입점.제휴문의</a>
		<a href="">고객서비스</a>
		<a href="">지식재산권센터</a>
		<a href="">안전거래센터</a>
	</span>
	
	<p>
		(주)위메프는 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br/>
		따라서 입점 팜내자가 등록한 상품, 거래정보 및 거래에 대하여 (주)위메프는 일체의 책임을 지지 않습니다.
	</p>
	
	<p>
		대표이사:하송 ㅣ   
		주소:서울특별시 강남구 영동대로 502 위메프빌딩 ㅣ 
		사업자등록번호:566-87-01096 ㅣ 
		통신판매업신고번호:2019-서울강남-03501 <a href="">사업자정보 확인</a><br/>
		
		고객센터:쇼핑(배송상품) 1588-4763.여행.레저/공연티켓/E쿠폰.지역 1661-4764.파트너센터 1644-4796.E-mail customerservice@wemakeprice.com <a href="">접수하기</a>
	</p>
	
	<p>
		우리은행 채무지급보증 안내 <a href="">서비스 가입사실 확인</a><br/>
		당사는 고객님이 현금 결제한 금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.<br/><br/>
		(주)위메프 사이트의 상품, 판매자, 쇼핑정보, 콘텐츠, UI 등에 대한 무단 복제, 전송, 배포, 스크래핑 등에 대한 행위는<br/>
		저작권법 및 콘텐츠산업 진흥법 등 관련 법령에 의하여 엄격히 금지됩니다. <a href="">콘텐츠산업 진흥법에 따른 표시</a><br/><br/>
		위메프 COPYRIGHT@WEMAKEPRICE INC. ALL RIGHTS RESERVED.
	</p>
</footer>
</body>
</html>