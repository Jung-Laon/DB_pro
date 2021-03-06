<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="controller.user.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recommand Book</title>

<style>

	body, div, span, p, a, font, ul, li, fieldset, form, legend, table {
		margin : 0;
		padding : 0;
		border : 0;
		line-height : 130%;
	}
	
	h5{
		margin-left : 5px;
	}
	div { display : block; }
	
	ul {
		margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	}
	
	.topBar_wrap {
		position : relative;
		width : 100%;
		border-bottom : 1px solid gray;
	}
	.topBar {
		height : 30px;
		z-index : 100;
		width : 1100px;
		margin : 0 auto;
	}
	.menu {
		float : right;
		margin-top : 8px;
		padding-right : 20px;
		font-size : 11px;
		display : inline-block;
	}
	
	.header_wrap {
		width : 1170px;
		margin : 0 auto;
		overflow : hidden;
		position : relative;
		border-radius: 10px 10px 10px 10px ;
		margin-bottom : 10px;
		margin-top : 10px;
		padding : 5px;
		background-color : #d5e3d5;
		font-weight : bolder;
	}

	.main_searchForm {
		float: left;
	    margin-top: 25px;
	    margin-left: -20px;
	    margin-right : 5px;
	    height: 50px;
	}
	#container {
		postion : relative;
		width : 1100px;
		margin: 0 auto 0;
		padding-top : 25px;
		padding-bottom: 50px;
		min-height : 600px;
		background-color:#ffffff;
		border-radius: 10px 10px 10px 10px ;
	}
	.main {
		position: relative;
	    z-index: 5;
	    width: 100%;
	    padding-bottom: 0;
	}
	
	.clearfix{
		display : block;
	}
	
	.section {
		margin-bottom: 9px;
	    zoom: 1;
	    position: relative;
	    z-index: 2;
	    display : block;
	}
	.rentalBookList {
		width : 800px;
		float : left;
		margin: 0 auto;
		margin-top : 5px;
		padding-top : 5px;
		padding-bottom: 5px;
		margin-left : 20px;
		min-height : 160px;
		background-color: #bbd4b8;
		border-radius: 10px 10px 10px 10px ;
	}
	.recommandBook {
		float : left;
		margin: 0 auto;
		margin-top : 5px;
		padding-top : 5px;
		padding-bottom: 10px;
		padding-left : 50px;
		min-height : 160px;
		width : 750px;
		background-color: #bbd4b8;
		border-radius: 10px 10px 10px 10px ;
	}
	
	.rentalForm {
		margin : 0 auto;
		background-color:#bbd4b8;
		margin-left : 20px;
		
	}
	
	.rentalFor fieldset{
		 border: 1px solid #d1d1d1;
	}
	.rentalItem .bookCover  {
		position: relative;
	    float : left;
	    margin-top : 5px;
	    margin-bottom : 5px;
	    margin-left : 10px;
	    background-color:#FFFFE0;
	    min-height : 120px;
	    min-width : 100px;
	}
	
	.rentalItem .rentalInfoDesc {
		position: relative;
	    float : left;
		padding-bottom : 2px;
		margin-left : 60px;
		padding-left : 30px;
		text-align : justify;
		word-break: break-all;
		display : block;
	}
	
	.rentalItem .rButton {
		min-height : 80px;
	    min-width : 60px;
	    float : right;
	    margin-top : 50px;
	    margin-right : 30px;
	    
	}
	
	.rentalItem {
		width : 770px;
		margin: 0 auto;
		margin-top : 15px;
		padding: 5px;
		margin-left : 5px;
		min-height : 160px;
		background-color:#bbd4b8;
		position : relative;
		float : left;
		border-radius: 10px 10px 10px 10px ;
	}
	
	.rentalForm {
		border-radius: 10px 10px 10px 10px;
		margin : 0 auto;
		padding-top : 10px;
		background-color:#FFFFFF;
		margin-left : 20px;
		
	}
	
	.rentalFor fieldset{
		 border: 1px solid #d1d1d1;
	}
	
	.rentalItem .bookCover {
		position: relative;
	    float : left;
	    margin-top : 5px;
	    margin-bottom : 5px;
	    margin-left : 10px;
	    background-color:#FFFFE0;
	    min-height : 120px;
	    min-width : 100px;
	}
	
	.rentalItem .rentalInfoDesc {
		position: relative;
	    float : left;
		padding-bottom : 2px;
		margin-left : 60px;
		padding-left : 30px;
		text-align : justify;
		word-break: break-all;
		display : block;
	}
	
	.rentalItem .rButton {
		min-height : 80px;
	    min-width : 60px;
	    float : right;
	    margin-top : 50px;
	    margin-right : 30px;
	    
	}

	.go_category {
		position: relative;
	    z-index: 200;
	    float: right;
	    width: 20%;
	    height: 700px;
	    padding: 2px;
	    border-radius: 10px 10px 10px 10px ;
	    border: 1px solid #d1d1d1;
	    background: #bbd4b8;
	    margin-right : 10px;
	}
	
	.go_category li {
		margin : 15px 20px;
		padding : 10;
	}
	
	.list ul {
		list-style:none;
	    margin:0;
	    padding:0;
	    text-align:center
	    
	}
	.list li {
		list-style:none;
		margin: 0 0 5px 5px;
	    padding: 0 0 5px 5px;
	    border : 0;
	    float: left;
	}
	.list {
	    position: relative;
	    margin: 0 auto;
	    display: inline-block;
	    height: 40px;
	    margin-bottom: 16px;
	    padding: 15px 0 15px 0;
	    overflow: hidden;
	}
	.footer_area {
		text-align: center; 
	}
	
	
	.myinfo {
		float : right;
		padding-top : 50px;
		margin : 0 auto;
		width : 250px;
	}
</style>
</head>
<body>
	<div id="wrapper">
		<header id="header">
			<!-- topBar : ??????????????? ???????????? ???????????? ???????????? ???(?) ????????? ??????.  -->
			<div class="topBar_wrap">
				<div class="topBar">
					<div class="menu">
					<% if( UserSessionUtils.isLoginUser("admin", request.getSession())) { %>
				    	<a href="<c:url value='/user/memberlist'/>" >????????? ?????? </a>
						<span> | </span>
						<a href="<c:url value='/user/booklist'/>">??? ????????? ??????</a>
					<% } %>
					</div>
				</div>
			</div>
			<!--  ????????? search ??? ?????? ???. -->
			<div class="header_wrap">
				<div class="logo" style=" float : left; width : 300px">
					<a href="<c:url value='/home'/>"><img src = "https://pbs.twimg.com/media/EplKy2FUYAEDjYq?format=png&name=360x360" width = "75px"></a>
				</div>
				<form name="main_search" class="main_searchForm" method="Get" action = "<c:url value='/book/search'/>">
				<!-- form??? action?????? method ????????? ?????? -->
					<fieldset>
						<legend>????????????</legend>
						?????? : 
						
						<select id="stype" name="stype" title="????????????" style="width:76px">
							<option value="all" <c:if test = "${stype=='all'}"> selected </c:if> >??????</option>
							<option value="subject"  <c:if test = "${stype=='subject'}"> selected </c:if>>??????</option>
							<option  value="member" <c:if test = "${stype=='member'}"> selected </c:if>>??????</option>
						</select> &nbsp;
						?????? : 
						<select id="stype_g" name="stype_g" title="????????????" style="width:76px">
							<option value="all" <c:if test = "${stype_g=='all'}"> selected </c:if> >??????</option>
							<option value="00"  <c:if test = "${stype_g=='00'}"> selected </c:if> > ??????</option>
							<option value="10"  <c:if test = "${stype_g=='10'}"> selected </c:if> > ?????? </option>
							<option value="20"  <c:if test = "${stype_g=='20'}"> selected </c:if> > ?????? </option>
							<option value="30" <c:if test = "${stype_g=='30'}"> selected </c:if> > ???????????? </option>
							<option value="40" <c:if test = "${stype_g=='40'}"> selected </c:if> > ???????????? </option>
							<option value="50"  <c:if test = "${stype_g=='50'}"> selected </c:if> > ????????????</option>
							<option value="60" <c:if test = "${stype_g=='60'}"> selected </c:if> > ?????? </option>
							<option value="70" <c:if test = "${stype_g=='70'}"> selected </c:if>  > ?????? </option>
							<option value="81" <c:if test = "${stype_g=='81'}"> selected </c:if> > ????????? </option>
							<option value="82" <c:if test = "${stype_g=='82'}"> selected </c:if> > ????????? </option>
							<option value="83" <c:if test = "${stype_g=='83'}"> selected </c:if> > ?????????</option>
							<option value="84" <c:if test = "${stype_g=='84'}"> selected </c:if> > ??????/?????? </option>
							<option value="85"  <c:if test = "${stype_g=='85'}"> selected </c:if> > SF </option>
							<option value="86" <c:if test = "${stype_g=='86'}"> selected </c:if> > ?????? </option>
							<option value="87" <c:if test = "${stype_g=='87'}"> selected </c:if>> ?????? </option>
							<option value="88"  <c:if test = "${stype_g=='88'}"> selected </c:if>> ??????</option>
							<option value="90"  <c:if test = "${stype_g=='90'}"> selected </c:if>> ?????? </option>
							<option value="89"  <c:if test = "${stype_g=='89'}"> selected </c:if>> ?????? </option>
						</select>
						<input type="text" id="search_text" name="search_kw" title = "????????? ??????"
						size="20" class="inputText" value=${text}>
<!-- ??????! -->
						<input type="submit" value="??????" >
					</fieldset>
				</form>
				<div class = "myinfo">
					<% if( UserSessionUtils.getLoginUserId(request.getSession()) == null) { %>
				    	<a href="<c:url value='/user/login/form'/>" style="padding-left : 80px;">????????? </a>
				    <% } else { %>
				    	<!-- ????????? myPage?memberID ????????? ???????????? ????????? -->	
					 	<a href="<c:url value='/user/myPage'/>" > ${userId} ???  ??????</a>
				    	<span> | </span>
				    	<a href="<c:url value='/user/logout'/>" style="padding-right : 10px;"> ????????????</a>
					<% } %>
				</div>
			</div>
		</header>
		
		
		<div id="container" class="main clearfix">
			<div class="main_content">
				<section class="section">					
					<div class ="rentalBookList">
						<div class ="recommandBook" >
							<form name="main_search" class="main_searchForm" method="Get" action = "<c:url value='/book/recommand'/>">
								?????? ???????????? ?????? ????????? ???????????????: <br>
								<input type="text" id="recommandBook" name="re_title" title = "??? ?????? ?????? " size="50" class="inputText"><br>
								<input type="submit" value="?????? ??????" > <br><br>
								<!-- ??????: ${result} -->
							</form>
						</div>
						
						<!-- ?????? ?????? jstl??? ???????????? ???????????? ???????????? ????????????. ~ ????????? ?????? / 10??? ?????? ?????? ??? ?????? ?????????. -->
						<div class="rentalItem">
						<h5> ?????? ?????? : </h5>
							<form class = "rentalForm" name = "rForm">							  			
							  	<c:forEach var="bookInfo" items="${biList}">
									<fieldset>
										<div class="bookCover">
											<img src="${bookInfo.getBookimage()}" alt="??? ??????" class="coverImage" width = "90px">
										</div>
										<div class="rentalInfoDesc">
										<!--<a href="<c:url value='/book/info'> <c:param name='bookID' value='${book.bookID}'/></c:url>"> 
												${book.bookname}</a> -->
												<a href="<c:url value='/book/info'>
													<c:param name="bookID" value='${bookInfo.getBookinfoID()}'/>
													<c:param name="text" value='${text}'/>
													<c:param name="stype" value='${stype}'/>
													<c:param name="stype_g" value='${stype_g}'/>
												</c:url>"> ${bookInfo.getBookname()}</a>
												<p> ?????? : ${bookInfo.getWriter()}
												<p> ????????? : ${bookInfo.getPublisher()}
												<p> ???????????? : ${bookInfo.getCategory()}
										</div>
									</fieldset>
								</c:forEach>
							</form>
						</div>
					</div>
					<div class="go_category">
						<h3><b>&nbsp; *????????? ????????????</b></h3>
						<!-- ????????? ??? ???????????? ?????? ????????? ?????? -->
						<ul style="list-style: none;">
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="00"/>
								</c:url>"> ??????</a> </li>	
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="10"/>
								</c:url>"> ??????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="20"/>
								</c:url>"> ??????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="30"/>
								</c:url>"> ???????????? </a></li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="40"/>
								</c:url>"> ????????????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="50"/>
								</c:url>"> ????????????</a></li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="60"/>
								</c:url>"> ??????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="70"/>
								</c:url>"> ??????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="81"/>
								</c:url>"> ?????????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="82"/>
								</c:url>"> ?????????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="83"/>
								</c:url>"> ?????????</a></li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="84"/>
								</c:url>"> ??????/??????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="85"/>
								</c:url>"> SF</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="86"/>
								</c:url>"> ??????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="87"/>
								</c:url>"> ??????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="88"/>
								</c:url>"> ??????</a> </li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="90"/>
								</c:url>"> ?????? </a></li>
							<li><a href="<c:url value='/book/search'> 
									<c:param name="search_kw" value=""/>
									<c:param name="stype" value="all"/>
									<c:param name="stype_g" value="89"/>
								</c:url>"> ??????</a> </li>
						</ul>
					</div>
				</section>
			</div>
		</div>
		<footer id="footer">
			<div class="footer_area">
				<div class="list" >
					<ul style="width:100%" >
						<li> DBP ??? ???????????? </li>
						<li> ?????? ?????? ???????????? </li>
						<li> ?????? : ????????? ????????? ????????? ?????? ????????? </li>
					</ul>
				</div>
			</div>
		</footer>	
	</div>

</body>
</html>