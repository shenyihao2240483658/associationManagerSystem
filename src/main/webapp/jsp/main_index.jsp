﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <style type="text/css">
        .button {
            display: inline-block;
            border-radius: 4px;
            background-color: #93D1FF;
            border: none;
            color: #2E2D3C;
            text-align: center;
            font-size: 14px;
            width: 100px;
            height: 30px;
            transition: all 0.5s;
            cursor: pointer;
            vertical-align: middle;
            float: right;
            margin-right: 40px;
        }

        .button span {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        .button span:after {
            content: '»';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }

        .button:hover span {
            padding-right: 25px;
        }

        .button:hover span:after {
            opacity: 1;
            right: 0;
        }

        .img-1 {
            width: 160px;
        }

        .img-4 {
            height: 208px;
            width: 278px;
            margin: 2px;
        }

        .div-head {
            width: 270px;
            height: 65px;
            margin-top: 10px;
            margin-left: 85%;
            position: fixed;
            z-index: 999;
        }

        .div-head .ul-head .li-head-1 {
            list-style: none;
            margin-top: 10px;
            text-align: center;
            line-height: 58px;
            font-size: 20px;
            float: left;
            width: 70px;
            height: 58px;
            font-weight: bold;
            position: relative;
            color: #ff7f21;
            border: none;
            cursor: pointer;
            transition: 800ms ease all;
            outline: none;
        }

        .div-head .ul-head .li-head-1:hover {
            background: #fff;
            color: #1AAB8A;
        }

        .div-head .ul-head .li-head-1:before, .div-head .ul-head .li-head-1:after {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            height: 2px;
            width: 0;
            background: #1AAB8A;
            transition: 400ms ease all;
        }

        .div-head .ul-head .li-head-1:after {
            right: inherit;
            top: inherit;
            left: 0;
            bottom: 0;
        }

        .div-head .ul-head .li-head-1:hover:before, .div-head .ul-head .li-head-1:hover:after {
            width: 100%;
            transition: 800ms ease all;
        }

        .div-head .ul-head .li-head-2 {
            list-style: none;
            float: left;
            width: 130px;
            height: 65px;
        }

        .div-head .ul-head .li-head-2 .img-head {
            margin-left: 20%;
            border-radius: 50%;
            overflow: hidden;
            display: block;
            width: 65px;
            height: 65px;
            border: 1px solid green;
        }
        .gallery_style{
            margin-left: 15%;
            margin-right: 15%;
        }
    </style>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- css files -->
    <link href="../css/font-awesome.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../css/chromagallery.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- /css files -->
    <!-- fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Viga' rel='stylesheet' type='text/css'>
    <!-- /fonts -->
    <!-- js files -->
    <script src="../js/modernizr.custom.js"></script>
    <!-- /js files -->
</head>
<body id="index.html" data-spy="scroll" data-target=".navbar" data-offset="60">
<div class="div-head" id="tx-div">
    <ul class="ul-head">
<%--        <li class="li-head-1" onclick="window.open('../jsp/login.jsp')">注册</li>--%>
<%--        <li class="li-head-1" onclick="window.open('../jsp/login.jsp')">登录</li>--%>
        <li class="li-head-2"><img class="img-head" id="img-head" src="${sessionScope.get("uPhoto")}"
                                   onclick="window.open('${pageContext.request.contextPath}/userInfo/${sessionScope.get("uName")}')" alt="">
        </li>
    </ul>
</div>
<!-- Top Bar -->
<section class="top-bar">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <a href="${pageContext.request.contextPath}/jsp/main_index.jsp" class="logo"><h1>Welcome</h1></a>
            </div>
        </div>
    </div>
</section>
<!-- /Top Bar -->
<!-- Navigation Bar -->
<div class="navbar-wrapper">
    <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top cl-effect-21">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">主页</a></li>
                        <li><a href="#about">关于</a></li>
                        <li><a href="#services">竞赛</a></li>
                        <li><a href="#gallery">活动</a></li>
                        <li><a href="#contact">联系</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- /Navigation Bar -->
<!-- Banner Section -->
<!-- Carousel
   ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="../images/banner1.jpg" alt="First slide">
            <div class="container">
                <div class="carousel-caption">

                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="../images/热巴1.jpg" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">

                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="../images/热巴2.jpg" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">

                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->
<!-- /Banner Section -->
<!-- About Section -->
<section class="about-us" id="about">
    <h3 class="text-center slideanim">About Your Activity</h3>

    <a href="${pageContext.request.contextPath}/joinedClub/${sessionScope.get("uName")}"><p class="text-center slideanim">点击展示你加入的社团</p></a>

    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="about-details">
                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <a name="a1-1" href="">
                            <img src="" class="img-1 img-responsive slideanim" id="img1-1">
                            </a>
                        </div>
                        <div class="col-sm-8 col-xs-12">
                            <div class="about-info slideanim">
                                <a name="a1-1" href="">
                                <p id="p1-1" style="font-size: 25px"></p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="about-details">
                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <a name="a1-2" href="">
                            <img src="" class="img-1 img-responsive slideanim" id="img1-2">
                            </a>
                        </div>
                        <div class="col-sm-8 col-xs-12">
                            <div class="about-info slideanim">
                                <a name="a1-2" href="">
                                <p id="p1-2" style="font-size: 25px"></p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row below">
            <div class="col-lg-6 col-md-6">
                <div class="about-details">
                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <a name="a1-3" href="">
                            <img src="" class="img-1 img-responsive slideanim" id="img1-3">
                            </a>
                        </div>
                        <div class="col-sm-8 col-xs-12">
                            <div class="about-info slideanim">
                                <a name="a1-3" href="">
                                <p id="p1-3" style="font-size: 25px"></p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="about-details">
                    <div class="row">
                        <div class="col-sm-4 col-xs-12">
                            <a name="a1-4" href="">
                            <img src="" class="img-1 img-responsive slideanim" id="img1-4">
                            </a>
                        </div>
                        <div class="col-sm-8 col-xs-12">
                            <div class="about-info slideanim">
                                <a name="a1-4" href="">
                                <p id="p1-4" style="font-size: 25px"></p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button id="button-1" class="button">
        <span>
            更多
        </span>
    </button>
</section>

<!-- /About Section -->
<!-- Our Services -->
<section class="our-services" id="services">
    <h3 class="text-center slideanim">竞赛 & 活动</h3>
    <p class="text-center slideanim">在这里我们将提供学校及各社团组织的竞赛与活动</p>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="serv-details">
                    <div class="row">
                        <div class="col-sm-6 col-xs-6">
                            <a id="a2-1" href="">
                                <img src="" alt="" class="img-responsive slideanim" id="img2-1">
                            </a>
                        </div>
                        <div class="col-sm-6 col-xs-6">
                            <div class="serv-img-details slideanim">
                                <h4 id="h2-1"></h4>
                                <p id="p2-1-1"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="serv-info slideanim">
                    <p id="p2-1-2"></p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="serv-details">
                    <div class="row">
                        <div class="col-sm-6 col-xs-6">
                            <a id="a2-2" href="">
                                <img src="" alt="" class="img-responsive slideanim" id="img2-2">
                            </a>
                        </div>
                        <div class="col-sm-6 col-xs-6">
                            <div class="serv-img-details slideanim">
                                <h4 id="h2-2"></h4>
                                <p id="p2-2-1"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="serv-info slideanim">
                    <p id="p2-2-2"></p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="serv-details">
                    <div class="row">
                        <div class="col-sm-6 col-xs-6">
                            <a id="a2-3" href="">
                                <img src="" alt="" class="img-responsive slideanim" id="img2-3">
                            </a>
                        </div>
                        <div class="col-sm-6 col-xs-6">
                            <div class="serv-img-details slideanim">
                                <h4 id="h2-3"></h4>
                                <p id="p2-3-1"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="serv-info slideanim">
                    <p id="p2-3-2"></p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="serv-details">
                    <div class="row">
                        <div class="col-sm-6 col-xs-6">
                            <a id="a2-4" href="">
                                <img src="" alt="" class="img-responsive slideanim" id="img2-4">
                            </a>
                        </div>
                        <div class="col-sm-6 col-xs-6">
                            <div class="serv-img-details slideanim">
                                <h4 id="h2-4"></h4>
                                <p id="p2-4-1"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="serv-info slideanim">
                    <p id="p2-4-2"></p>
                </div>
            </div>
        </div>
    </div>
    <button onclick="window.open('../html/all_activities.html')" class="button">
        <span>更多</span>
    </button>
</section>
<!-- /Our Information -->
<!-- Our Gallery -->
<section class="our-gallery" id="gallery">
    <h3 class="text-center slideanim">All Associations</h3>
    <p class="text-center slideanim">这里包含着已注册过的所有社团</p>
    <div class="gallery_style">
        <a id="a4-1" href=""><img src="" alt="Click" id="img4-1" class="img-4"/></a>
        <a id="a4-2" href=""><img src="" alt="Click" id="img4-2" class="img-4"/></a>
        <a id="a4-3" href=""><img src="" alt="Click" id="img4-3" class="img-4"/></a>
        <a id="a4-4" href=""><img src="" alt="Click" id="img4-4" class="img-4"/></a>
        <a id="a4-5" href=""><img src="" alt="Click" id="img4-5" class="img-4"/></a>
        <a id="a4-6" href=""><img src="" alt="Click" id="img4-6" class="img-4"/></a>
        <a id="a4-7" href=""><img src="" alt="Click" id="img4-7" class="img-4"/></a>
        <a id="a4-8" href=""><img src="" alt="Click" id="img4-8" class="img-4"/></a>
    </div>
    <button class="button" onclick="window.open('${pageContext.request.contextPath}/jsp/all_clubs.jsp')">
        <span>
            更多
        </span>
    </button>
</section>
<!-- Contact Section -->
<section class="our-contacts" id="contact">
    <h3 class="text-center slideanim">联系我们</h3>
    <p class="text-center slideanim">我们非常乐意和您沟通您的使用感受</p>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <form role="form">
                    <div class="row">
                        <div class="form-group col-lg-4 slideanim">
                            <input type="text" class="form-control user-name" placeholder="Your Name" required/>
                        </div>
                        <div class="form-group col-lg-4 slideanim">
                            <input type="email" class="form-control mail" placeholder="Your Email" required/>
                        </div>
                        <div class="form-group col-lg-4 slideanim">
                            <input type="tel" class="form-control pno" placeholder="Your Phone Number" required/>
                        </div>
                        <div class="clearfix"></div>
                        <div class="form-group col-lg-12 slideanim">
                            <textarea class="form-control" rows="6" placeholder="Your Message" required/></textarea>
                        </div>
                        <div class="form-group col-lg-12 slideanim">
                            <button type="submit" href="#" class="btn-outline1">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- /Contact Section -->
<!-- Footer Section -->
<section class="footer">
    <h2 class="text-center">THANKS FOR VISITING US</h2>
    <hr>
</section>
<!-- /Footer Section -->
<!-- Back To Top -->
<a href="#0" class="cd-top">Top</a>
<!-- /Back To Top -->
<!-- js files -->
<script src="../js/jquery-3.5.1.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/SmoothScroll.min.js"></script>
<script src="../js/canvas-nest.js"></script>
<!--&lt;!&ndash; js files for gallery &ndash;&gt;-->
<!--<script src="../js/chromagallery.pkgd.min.js"></script>-->
<script type="text/javascript">
    window.onload = function () {
        function getQueryVariable(variable) {
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            for (var i = 0; i < vars.length; i++) {
                var pair = vars[i].split("=");
                if (pair[0] == variable) {
                    return decodeURI(pair[1]);
                } //解决中文乱码
            }
            return (false);
        }

        var selectuId = getQueryVariable("uId");
        $.ajax({
            url: "/srp/clubs",
            type: "get",
            dataType: "json",
            success: function (result) {
                if (result != null && result !== "") {
                    for (let i = 0; i < result.length; i++) {
                        if (i === 0) {
                            document.getElementById("img4-1").src = result[i].tPhoto;
                            document.getElementById("a4-1").href = "${pageContext.request.contextPath}/html/club.html?cId=" + result[i].cId;
                        } else if (i === 1) {
                            document.getElementById("img4-2").src = result[i].tPhoto;
                            document.getElementById("a4-2").href = "${pageContext.request.contextPath}/html/club.html?cId=" + result[i].cId;
                        } else if (i === 2) {
                            document.getElementById("img4-3").src = result[i].tPhoto;
                            document.getElementById("a4-3").href = "${pageContext.request.contextPath}/html/club.html?cId=" + result[i].cId;
                        } else if (i === 3) {
                            document.getElementById("img4-4").src = result[i].tPhoto;
                            document.getElementById("a4-4").href = "${pageContext.request.contextPath}/html/club.html?cId=" + result[i].cId;
                        } else if (i === 4) {
                            document.getElementById("img4-5").src = result[i].tPhoto;
                            document.getElementById("a4-5").href = "${pageContext.request.contextPath}/html/club.html?cId=" + result[i].cId;
                        } else if (i === 5) {
                            document.getElementById("img4-6").src = result[i].tPhoto;
                            document.getElementById("a4-6").href = "${pageContext.request.contextPath}/html/club.html?cId=" + result[i].cId;
                        } else if (i === 6) {
                            document.getElementById("img4-7").src = result[i].tPhoto;
                            document.getElementById("a4-7").href = "${pageContext.request.contextPath}/html/club.html?cId=" + result[i].cId;
                        } else if (i === 7) {
                            document.getElementById("img4-8").src = result[i].tPhoto;
                            document.getElementById("a4-8").href = "${pageContext.request.contextPath}/html/club.html?cId=" + result[i].cId;
                        }
                    }
                } else {
                    alert('失败!');
                    window.location.reload();
                }
            }
        });
        /*
        if (selectuId === "" || selectuId != null) {
            document.getElementById("p1-1").innerText = "请先登录！";
        }*/
        {
            $.ajax({
                url: "/srp/clubs_member/" + selectuId,
                type: "get",
                dataType: "json",
                success: function (result) {
                    if (result != null || result !== "") {
                        for (let i = 0; i < result.length; i++) {
                            if (i === 0) {
                                var s = document.getElementsByName("a1-1");
                                s[0].href = s[1].href = "club.html?cId=" + result[i].cId + "&uId=" + selectuId;
                                document.getElementById("p1-1").innerText = result[i].cName;
                                document.getElementById("img1-1").src = result[i].tPhoto;
                            } else if (i === 1) {
                                var s = document.getElementsByName("a1-2");
                                s[0].href = s[1].href = "club.html?cId=" + result[i].cId + "&uId=" + selectuId;
                                document.getElementById("p1-2").innerText = result[i].cName;
                                document.getElementById("img1-2").src = result[i].tPhoto;
                            } else if (i === 2) {
                                var s = document.getElementsByName("a1-3");
                                s[0].href = s[1] .href = "club.html?cId=" + result[i].cId + "&uId=" + selectuId;
                                document.getElementById("p1-3").innerText = result[i].cName;
                                document.getElementById("img1-3").src = result[i].tPhoto;
                            } else if (i === 3) {
                                var s = document.getElementsByName("a1-4");
                                s[0].href = s[1].href = "club.html?cId=" + result[i].cId + "&uId=" + selectuId;
                                document.getElementById("p1-4").innerText = result[i].cName;
                                document.getElementById("img1-4").src = result[i].tPhoto;
                            }
                        }
                    } else {
                        alert('失败!');
                        window.location.reload();
                    }
                }
            });
        }
        $.ajax({
            url: "/srp/all_activities/0/4",
            type: "get",
            dataType: "json",
            success: function (result) {
                if (result != null && result !== "") {
                    for (let i = 0; i < 4; i++) {
                        if (i === 0) {
                            document.getElementById("img2-1").src = result[i].aPhoto;
                            document.getElementById("a2-1").href = "activity_details.html?aId=" + result[i].aId + "&uId=" + selectuId;
                            document.getElementById("h2-1").innerText = result[i].aTitle;
                            document.getElementById("p2-1-1").innerText = result[i].cName;
                            document.getElementById("p2-1-2").innerText = result[i].aIntroduction;
                        } else if (i === 1) {
                            document.getElementById("img2-2").src = result[i].aPhoto;
                            document.getElementById("a2-2").href = "activity_details.html?aId=" + result[i].aId + "&uId=" + selectuId;
                            document.getElementById("h2-2").innerText = result[i].aTitle;
                            document.getElementById("p2-2-1").innerText = result[i].cName;
                            document.getElementById("p2-2-2").innerText = result[i].aIntroduction;
                        } else if (i === 2) {
                            document.getElementById("img2-3").src = result[i].aPhoto;
                            document.getElementById("a2-3").href = "activity_details.html?aId=" + result[i].aId + "&uId=" + selectuId;
                            document.getElementById("h2-3").innerText = result[i].aTitle;
                            document.getElementById("p2-3-1").innerText = result[i].cName;
                            document.getElementById("p2-3-2").innerText = result[i].aIntroduction;
                        } else if (i === 3) {
                            document.getElementById("img2-4").src = result[i].aPhoto;
                            document.getElementById("a2-4").href = "activity_details.html?aId=" + result[i].aId + "&uId=" + selectuId;
                            document.getElementById("h2-4").innerText = result[i].aTitle;
                            document.getElementById("p2-4-1").innerText = result[i].cName;
                            document.getElementById("p2-4-2").innerText = result[i].aIntroduction;
                        }
                    }
                } else {
                    alert('失败!');
                    window.location.reload();
                }
            }
        });
    }
</script>
<!-- Back To Top -->
<script src="../js/backtotop.js"></script>
<!-- /Back To Top -->
<script>
    $(document).ready(function () {
        // Add smooth scrolling to all links in navbar + footer link
        $(".navbar a, footer a[href='#myPage']").on('click', function (event) {

            // Store hash
            var hash = this.hash;

            // Using jQuery's animate() method to add smooth page scroll
            // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function () {

                // Add hash (#) to URL when done scrolling (default click behavior)
                window.location.hash = hash;
            });
        });
    })
</script>
<script>
    $(window).scroll(function () {
        $(".slideanim").each(function () {
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }
        });
    });
</script>
</body>
</html>