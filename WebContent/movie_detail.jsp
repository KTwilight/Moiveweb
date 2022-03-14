<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Xi
  Date: 2020/11/20
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zxx">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>鱼头电影 - 页面详情</title>
    <!-- Favicon Icon -->
    <link rel="icon" type="image/png" href="assets/img/favcion.png" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" media="all" />
    <!-- Slick nav CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/slicknav.min.css" media="all" />
    <!-- Iconfont CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/icofont.css" media="all" />
    <!-- Owl carousel CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css">
    <!-- Popup CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">
    <!-- Main style CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" media="all" />
    <!-- Responsive CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css" media="all" />
    <!--[if lt IE 9]>
    <script src="http://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>


<!-- Page loader -->
<div id="preloader"></div>
<!-- header section start -->
<header class="header">
    <div class="container">
        <div class="header-area">
            <div class="logo">
                <a href="index.jsp"><img src="assets/img/icon.png" alt="logo" /></a>
            </div>
            <div class="header-right">
		        <form action="search" method="get">
		          <input type="text" name="content">
		          <button><i class="icofont icofont-search"></i></button>
		          <input type="hidden" name="offset" value="0">
		        </form>
            </div>
            <div class="menu-area">
                <div class="responsive-menu"></div>
                <div class="mainmenu">
                    <ul id="primary-menu">
                        <li><a href="index.jsp">首页</a></li>
                        <li><a href="classify?gId=0&yearId=0&offset=0">电影一览</a></li>
                        <li><a class="active" href="showMovieDetail?mid=" id="midRand">手气不错</a></li>
            			<li><a href="search?content=&offset=0">搜索一览</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header section end -->
<!-- breadcrumb area start -->
<section class="breadcrumb-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-area-content">
                    <h1>${movie.name}</h1>
                </div>
            </div>
        </div>
    </div>
</section><!-- breadcrumb area end -->
<!-- transformers area start -->
<section class="transformers-area">
    <div class="container">
        <div class="transformers-box">
            <div class="row flexbox-center">
                <div class="col-lg-5 text-lg-left text-center">
                    <div class="transformers-content">
                        <img src="${movie.poster}" alt="about" />
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="transformers-content">
                        <h2>${movie.name}</h2>
                        <p>|
                        	<c:forEach items="${genreList}" var="genre">${genre.name} |
                        	</c:forEach>
                        </p>
                        <ul>
                            <li>
                                <div class="transformers-left">
                                    导演:
                                </div>
                                <div class="transformers-right">
                                |
		                        	<c:forEach items="${directorList}" var="director">${director.name} |
		                        	</c:forEach>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    上映时间:
                                </div>
                                <div class="transformers-right">
                                    ${movie.date}
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    演员:
                                </div>
                                <div class="transformers-right">
		                        	<c:forEach items="${actorList}" var="actor">
		                        		<p>${actor.name}</p>
		                        	</c:forEach>
                                </div>
                            </li>
                            <li>
                                <div class="transformers-left">
                                    分享:
                                </div>
                                <div class="transformers-right">
                                    <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                    <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                    <a href="#"><i class="icofont icofont-social-google-plus"></i></a>
                                    <a href="#"><i class="icofont icofont-youtube-play"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- transformers area end -->
<!-- details area start -->
<section class="details-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="details-content">
                    <div class="details-overview">
                        <h2>简介</h2>
                        <p>${movie.description}</p>
                    </div>
                    <div class="details-reply">
                        <h2>评论区</h2>
                        	<c:forEach items="${commentList}" var="comment">
		                        <p>${comment.detail}</p>
		                        <br>
		                        <hr />
		                        <br>
		                    </c:forEach>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="textarea-container">
                                        <textarea placeholder="点击此处开始填写" id="detail"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="details-comment">
                                <i class="theme-btn theme-btn2" id="commentSubmit">留下评论</i>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- details area end -->
<!-- footer section start -->
<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-sm-6">
        <div class="widget">
          <img src="assets/img/icon.png" alt="about" />
        </div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="widget">
          <h4>素材来源</h4>
          <ul>
            <li><a href="https://www.douban.com/" target="_blank">豆瓣电影</a></li>
            <li><a href="https://getbootstrap.com/" target="_blank">bootstrap</a></li>
            <li><a href="http://www.bootstrapmb.com/item/1687" target="_blank">MoviePoint</a></li>
          </ul>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="widget">
          <h4>页面展示</h4>
          <ul>
            <li><a href="index.jsp">首页</a></li>
            <li><a href="classify?gId=0&yearId=0&offset=0">电影一览</a></li>
            <li><a href="showMovieDetail?mid=1#">电影详情</a></li>
            <li><a href="search?content=&offset=0">搜索界面</a></li>
          </ul>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="widget">
          <h4>关于我们</h4>
          <ul>
          <li><a href="https://www.ustb.edu.cn/" target="_blank">USTB</a></li>
          <li><a href="http://scce.ustb.edu.cn/" target="_blank">计算机科学与技术</a></li>
          </ul>
        </div>
      </div>
    </div>
    <hr />
  </div>
  <div class="copyright">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 text-center text-lg-left">
          <div class="copyright-content">
            <p>&copy; 2020 鱼头电影</p>
          </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
          <div class="copyright-content">
            <a href="#" class="scrollToTop">
              	回到首页<i class="icofont icofont-arrow-up"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer><!-- footer section end -->
<!-- jquery main JS -->
<script src="assets/js/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Slick nav JS -->
<script src="assets/js/jquery.slicknav.min.js"></script>
<!-- owl carousel JS -->
<script src="assets/js/owl.carousel.min.js"></script>
<!-- Popup JS -->
<script src="assets/js/jquery.magnific-popup.min.js"></script>
<!-- Isotope JS -->
<script src="assets/js/isotope.pkgd.min.js"></script>
<!-- main JS -->
<script src="assets/js/main.js"></script>
<script>
    var commentSubmit = document.getElementById("commentSubmit")
    var detail = document.getElementById("detail")
    $(document).ready(function() {
    commentSubmit.onclick = function(){
    	if(detail.value){
	         $.ajax({
		         type:"GET",
		         url:"InsertCommentServlet?mid="+${movie.mid} +"&detail="+detail.value + "&time=" + new Date().getTime(),
		         success: function(){
		           	alert("评论成功！");
		           	location.reload();
	         	}
	         })
         }
    	else{
    		alert("请输入内容！");
    	}
       };
    })
    var midRand = document.getElementById("midRand")
    var numRand = Math.floor(Math.random() * 200) + 1
    midRand.href = "showMovieDetail?mid=" + numRand.toString()
</script>
</body>
</html>
