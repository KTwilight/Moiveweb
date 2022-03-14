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
  <title>鱼头电影 - 首页</title>
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
            <li><a class="active" href="index.jsp">首页</a></li>
            <li><a href="classify?gId=0&yearId=0&offset=0">电影一览</a></li>
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
<section class="hero-area" id="home">
  <div class="container">
    <div class="hero-area-slider">
        <div class="row hero-area-slide">
          <div class="col-lg-6 col-md-5">
            <div class="hero-area-content">
              <img src="topic/1.png" alt="about" />
            </div>
          </div>
          <div class="col-lg-6 col-md-7">
            <div class="hero-area-content pr-50">
              <h2>肖申克的救赎</h2>
              <div class="review">
                <div class="author-review">
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                </div>
                <h4>2186494</h4>
              </div>
              <p>弗兰克·德拉邦特 Frank Darabont, 斯蒂芬·金 Stephen King</p>
              <br>
              <p>一场谋杀案使银行家安迪（蒂姆•罗宾斯 Tim Robbins 饰）蒙冤入狱，谋杀妻子及其情人的指控将囚禁他终生。在肖申克监狱的首次现身就让监狱“大哥”瑞德（摩根•弗里曼 Morgan Freeman ...</p>
              <div class="slide-trailor">
                <br>
                <br>
                <br>
                <a class="theme-btn theme-btn2" href="showMovieDetail?mid=1"><i class="icofont icofont-play"></i>查看详情</a>
              </div>
            </div>
          </div>
        </div>
      <div class="row hero-area-slide">
        <div class="col-lg-6 col-md-5">
          <div class="hero-area-content">
            <img src="topic/2.png" alt="about" />
          </div>
        </div>
        <div class="col-lg-6 col-md-7">
          <div class="hero-area-content pr-50">
            <h2>小森林</h2>
            <div class="review">
              <div class="author-review">
                <i class="icofont icofont-star"></i>
                <i class="icofont icofont-star"></i>
                <i class="icofont icofont-star"></i>
                <i class="icofont icofont-star"></i>
                <i class="icofont icofont-star"></i>
              </div>
              <h4>322236</h4>
            </div>
            <p>森淳一 Junichi Mori, 五十岚大介 Daisuke Igarashi</p>
            <br>
            <p>平凡女孩市子（桥本爱 饰）自幼生长在位于日本东北地区的村庄小森。这里远离都市的喧嚣和浮躁，为青山绿水所环绕，俨然一个幽静怡然的世外桃源。村民们日出而作，日落而息，依靠一双勤劳的双手经营渺小却舒适的生活...</p>
            <div class="slide-trailor">
              <br>
              <br>
              <br>
              <a class="theme-btn theme-btn2" href="showMovieDetail?mid=103"><i class="icofont icofont-play"></i>查看详情</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row hero-area-slide">
        <div class="col-lg-6 col-md-5">
          <div class="hero-area-content">
            <img src="topic/3.png" alt="about" />
          </div>
        </div>
        <div class="col-lg-6 col-md-7">
          <div class="hero-area-content pr-50">
            <h2>寻梦环游记 Coco</h2>
            <div class="review">
              <div class="author-review">
                <i class="icofont icofont-star"></i>
                <i class="icofont icofont-star"></i>
                <i class="icofont icofont-star"></i>
                <i class="icofont icofont-star"></i>
                <i class="icofont icofont-star"></i>
              </div>
              <h4>1184241</h4>
            </div>
            <p>阿德里安·莫利纳 Adrian Molina, 马修·奥尔德里奇 Matthew Aldrich...</p>
            <br>
            <p>热爱音乐的米格尔（安东尼·冈萨雷兹 Anthony Gonzalez 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即...</p>
            <div class="slide-trailor">
              <br>
              <br>
              <br>
              <a class="theme-btn theme-btn2" href="showMovieDetail?mid=30"><i class="icofont icofont-play"></i>查看详情</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="hero-area-thumb">
      <div class="thumb-prev">
        <div class="row hero-area-slide">
          <div class="col-lg-6">
            <div class="hero-area-content">
              <img src="topic/3.png" alt="about" />
            </div>
          </div>
          <div class="col-lg-6">
            <div class="hero-area-content pr-50">
              <h2>寻梦环游记 Coco</h2>
              <div class="review">
                <div class="author-review">
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                </div>
                <h4>1184241</h4>
              </div>
              <p>阿德里安·莫利纳 Adrian Molina, 马修·奥尔德里奇 Matthew Aldrich...</p>
              <br>
              <p>热爱音乐的米格尔（安东尼·冈萨雷兹 Anthony Gonzalez 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即...</p>
              <div class="slide-trailor">
                <br>
                <br>
                <br>
                <a class="theme-btn theme-btn2" href="showMovieDetail?mid=30"><i class="icofont icofont-play"></i>查看详情</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="thumb-next">
        <div class="row hero-area-slide">
          <div class="col-lg-6">
            <div class="hero-area-content">
              <img src="topic/2.png" alt="about" />
            </div>
          </div>
          <div class="col-lg-6">
            <div class="hero-area-content pr-50">
              <h2>小森林</h2>
              <div class="review">
                <div class="author-review">
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                  <i class="icofont icofont-star"></i>
                </div>
                <h4>322236</h4>
              </div>
              <p>森淳一 Junichi Mori, 五十岚大介 Daisuke Igarashi</p>
              <br>
              <p>平凡女孩市子（桥本爱 饰）自幼生长在位于日本东北地区的村庄小森。这里远离都市的喧嚣和浮躁，为青山绿水所环绕，俨然一个幽静怡然的世外桃源。村民们日出而作，日落而息，依靠一双勤劳的双手经营渺小却舒适的生活...</p>
              <div class="slide-trailor">
                <br>
                <br>
                <br>
                <a class="theme-btn theme-btn2" href="showMovieDetail?mid=103"><i class="icofont icofont-play"></i>查看详情</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section><!-- hero area end -->
<!-- portfolio section start -->
<section class="portfolio-area pt-60">
  <div class="container">
    <div class="row flexbox-center">
      <div class="col-lg-12 text-center text-lg-left">
        <div class="section-title">
          <h1><i class="icofont icofont-movie"></i>电影推荐</h1>
        </div>
      </div>
    </div>
    <hr />
    <div class="row">
      <div class="col-lg-12">
        <div class="row portfolio-item">
          <c:forEach items="${RecommendedMovie}" var="movie">
            <div class="col-md-3 col-sm-6">
              <div class="single-portfolio">
                <div class="single-portfolio-img">
                  <a href="showMovieDetail?mid=${movie.mid}">
                  <img src="${movie.poster}" alt="portfolio" />
                  </a>
                </div>
                <div class="portfolio-content">
                  <h2>${movie.name}</h2>
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
</section>
<!-- portfolio section end -->

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
</footer>
<!-- footer section end -->
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
