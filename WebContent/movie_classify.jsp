<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: Xi
  Date: 2020/11/23
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE HTML>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>鱼头电影 - 电影一览</title>
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
                        <li><a class="active" href="classify?gId=0&yearId=0&offset=0">电影一览</a></li>
                        <li><a href="" id="midRand">手气不错</a></li>
            			<li><a href="search?content=&offset=0">搜索一览</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header section end -->
<!-- hero area start -->
<br>
<br>
<br>
<br>
<!-- hero area end -->
<!-- portfolio section start -->
<section class="portfolio-area pt-60">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-area-content">
                    <h1>电影一览</h1>
                </div>
            </div>
        </div>
        <hr />
        <div class="portfolio-menu">
            <ul>
                <li>类型：</li>
                <c:forEach items="${genreList}" var="genre">
                    <li><a href ="classify?gId=${genre.gid}&yearId=${pageYearId}&offset=0">${genre.name}</a></li>
                </c:forEach>
            </ul>
            <ul>
            <li>年代：</li>
                    <li><a href ="classify?gId=${pageGId}&yearId=0&offset=0">全部</a></li>
                    <li><a href ="classify?gId=${pageGId}&yearId=1&offset=0">2020后</a></li>
                    <li><a href ="classify?gId=${pageGId}&yearId=2&offset=0">2010</a></li>
                    <li><a href ="classify?gId=${pageGId}&yearId=3&offset=0">2000</a></li>
                    <li><a href ="classify?gId=${pageGId}&yearId=4&offset=0">1990</a></li>
                    <li><a href ="classify?gId=${pageGId}&yearId=5&offset=0">1980</a></li>
                    <li><a href ="classify?gId=${pageGId}&yearId=6&offset=0">1980前</a></li>
            </ul>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="row portfolio-item">
                    <c:forEach items="${movieList}" var="movie">
                        <div class="col-md-3 col-sm-6">
                            <div class="single-portfolio">
                                <div class="single-portfolio-img">
                                    <a href="showMovieDetail?mid=${movie.mid}">
                                        <img src="${movie.poster}" alt="portfolio" />
                                    </a>
                                </div>
                                <div class="portfolio-content">
                                    <h3>${movie.name}</h3>
                                    <div class="review">
                                        <div class="author-review">
                                            <i class="icofont icofont-star"></i>
                                            <i class="icofont icofont-star"></i>
                                            <i class="icofont icofont-star"></i>
                                            <i class="icofont icofont-star"></i>
                                            <i class="icofont icofont-star"></i>
                                        </div>
                                        <h4>${movie.ratingCount}</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section><!-- portfolio section end -->
<!-- video section start -->
<section class="details-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="details-content">
                    <div class="details-thumb">
                        <div class="details-thumb-prev">
                            <div class="thumb-icon">
                                <a href="classify?gId=${pageGId}&yearId=${pageYearId}&offset=${lastOffset}"><i class="icofont icofont-simple-left"></i></a>
                            </div>
                            <div class="thumb-text">
                                <h4>上一页</h4>
                                <p>电影一览</p>
                            </div>
                        </div>
                        <div class="details-thumb-next">
                            <div class="thumb-text">
                                <h4>下一页</h4>
                                <p>电影一览</p>
                            </div>
                            <div class="thumb-icon">
                                <a href="classify?gId=${pageGId}&yearId=${pageYearId}&offset=${nextOffset}"><i class="icofont icofont-simple-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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
    var midRand = document.getElementById("midRand")
    var numRand = Math.floor(Math.random() * 200) + 1
    midRand.href = "showMovieDetail?mid=" + numRand.toString()
</script>
</body>
</html>
