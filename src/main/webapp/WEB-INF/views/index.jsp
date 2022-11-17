<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta
            name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link rel="stylesheet" href="/css/reset.css"/>
    <link rel="stylesheet" href="/css/all.min.css"/>
    <!-- Latest compiled and minified CSS -->
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="/css/intro.css"/>
    <link rel="stylesheet" href="/css/popup1.css"/>
    <script type="text/javascript" src="/js/jquery-3.6.1.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script
            type="text/javascript"
            src="https://www.gstatic.com/charts/loader.js"
    ></script>
    <script type="text/javascript" src="js/vanilla-tilt.js"></script>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Handlee&family=Jua&family=Nanum+Gothic:wght@400;700;800&family=Roboto:wght@300;400;700&display=swap");
    </style>
    <title>LINK CHART</title>
    <script src="/js/doChart.js" type="text/javascript">
        // getChartData
        // loadChart
    </script>
    <script src="js/doNews.js" type="text/javascript">
        // getNewsData
        // loadNews
        // getNews_click
    </script>
    <script src="/js/dateUtil.js" type="text/javascript">
        // date formatter
    </script>

    <%--
    <script src="js/index.js" type="text/javascript"></script>
    --%>

    <script type="text/javascript">
        // 초기 로딩시 보여줄 데이터
        $(document).ready(function () {
            getStockData("코스피");
            getNewsData("증시", dateToString(new Date()), false);
        });
    </script>

    <style>
        .newsMain_div {
            border: solid #50586c;
        }
    </style>
</head>

<body>

<div class="lc_nav_wrap" id="lc_nav_wrap">
    <div class="lc_nav">
        <ul>
            <li class="lcn_list active" id="lcnav01">
                <a href="#">
                    <span class="lcn_icon">
                        <i class="fa-solid fa-house"></i>
                    </span>
                    <span class="lcn_text">
                        HOME
                    </span>
                </a>
            </li>
            <li class="lcn_list" id="lcnav02">
                <a href="#">
                    <span class="lcn_icon">
                        <i class="fa-solid fa-chart-simple"></i>
                    </span>
                    <span class="lcn_text">
                        Link Chart
                    </span>
                </a>
            </li>
            <li class="lcn_list" id="lcnav03">
                <a href="#">
                    <span class="lcn_icon">
                        <i class="fa-solid fa-right-to-bracket"></i>
                    </span>
                    <span class="lcn_text">
                        LOGIN
                    </span>
                </a>
            </li>
            <li class="lcn_list" id="lcnav04">
                <a href="#">
                    <span class="lcn_icon">
                        <i class="fa-solid fa-user"></i>
                    </span>
                    <span class="lcn_text">
                        SIGN UP
                    </span>
                </a>
            </li>
            <%--<li class="lcn_list" id="lcnav05">
                <a href="#">
                    <span class="lcn_icon">
                        <i class="fa-solid fa-heart"></i>
                    </span>
                    <span class="lcn_text">
                        PROFILE
                    </span>
                </a>
            </li>--%>
        </ul>
    </div>
</div>

<div class="section_01_wrap">

    <div class="bubbles">
        <span style="--i:11"></span>
        <span style="--i:12"></span>
        <span style="--i:24"></span>
        <span style="--i:10"></span>
        <span style="--i:14"></span>
        <span style="--i:23"></span>
        <span style="--i:18"></span>
        <span style="--i:16"></span>
        <span style="--i:19"></span>
        <span style="--i:20"></span>
        <span style="--i:22"></span>
        <span style="--i:25"></span>
        <span style="--i:18"></span>
        <span style="--i:21"></span>
        <span style="--i:15"></span>
        <span style="--i:13"></span>
        <span style="--i:26"></span>
        <span style="--i:17"></span>
        <span style="--i:13"></span>
        <span style="--i:28"></span>
        <span style="--i:11"></span>
        <span style="--i:12"></span>
        <span style="--i:24"></span>
        <span style="--i:10"></span>
        <span style="--i:14"></span>
        <span style="--i:23"></span>
        <span style="--i:18"></span>
        <span style="--i:16"></span>
        <span style="--i:19"></span>
        <span style="--i:20"></span>
        <span style="--i:22"></span>
        <span style="--i:25"></span>
        <span style="--i:18"></span>
        <span style="--i:21"></span>
        <span style="--i:15"></span>
        <span style="--i:13"></span>
        <span style="--i:26"></span>
        <span style="--i:17"></span>
        <span style="--i:13"></span>
        <span style="--i:28"></span>
        <span style="--i:11"></span>
        <span style="--i:12"></span>
        <span style="--i:24"></span>
        <span style="--i:10"></span>
        <span style="--i:14"></span>
        <span style="--i:23"></span>
        <span style="--i:18"></span>
        <span style="--i:16"></span>
        <span style="--i:19"></span>
        <span style="--i:20"></span>
        <span style="--i:22"></span>
        <span style="--i:25"></span>
        <span style="--i:18"></span>
        <span style="--i:21"></span>
        <span style="--i:15"></span>
        <span style="--i:13"></span>
        <span style="--i:26"></span>
        <span style="--i:17"></span>
        <span style="--i:13"></span>
        <span style="--i:28"></span>
        <span style="--i:11"></span>
        <span style="--i:12"></span>
        <span style="--i:24"></span>
        <span style="--i:10"></span>
        <span style="--i:14"></span>
        <span style="--i:23"></span>
        <span style="--i:18"></span>
        <span style="--i:16"></span>
        <span style="--i:19"></span>
        <span style="--i:20"></span>
        <span style="--i:22"></span>
        <span style="--i:25"></span>
        <span style="--i:18"></span>
        <span style="--i:21"></span>
        <span style="--i:15"></span>
        <span style="--i:13"></span>
        <span style="--i:26"></span>
        <span style="--i:17"></span>
        <span style="--i:13"></span>
        <span style="--i:28"></span>
        <span style="--i:11"></span>
        <span style="--i:12"></span>
        <span style="--i:24"></span>
        <span style="--i:10"></span>
        <span style="--i:14"></span>
        <span style="--i:23"></span>
        <span style="--i:18"></span>
        <span style="--i:16"></span>
        <span style="--i:19"></span>
        <span style="--i:20"></span>
        <span style="--i:22"></span>
        <span style="--i:25"></span>
        <span style="--i:18"></span>
        <span style="--i:21"></span>
        <span style="--i:15"></span>
        <span style="--i:13"></span>
        <span style="--i:26"></span>
        <span style="--i:17"></span>
        <span style="--i:13"></span>
        <span style="--i:28"></span>
        <span style="--i:11"></span>
        <span style="--i:12"></span>
        <span style="--i:24"></span>
        <span style="--i:10"></span>
        <span style="--i:14"></span>
        <span style="--i:23"></span>
        <span style="--i:18"></span>
        <span style="--i:16"></span>
        <span style="--i:19"></span>
        <span style="--i:20"></span>
        <span style="--i:22"></span>
        <span style="--i:25"></span>
        <span style="--i:18"></span>
        <span style="--i:21"></span>
        <span style="--i:15"></span>
        <span style="--i:13"></span>
        <span style="--i:26"></span>
        <span style="--i:17"></span>
        <span style="--i:13"></span>
        <span style="--i:28"></span>
    </div>

    <div class="wave wave1"></div>
    <div class="wave wave2"></div>
    <div class="wave wave3"></div>
    <div class="wave wave4"></div>

    <div class="container section_01" id="bpw">

        <div class="row">
            <div class="col-md-5 intro_content">
                <ul id="bpwrap"></ul>
                <a href="#" onclick="toggleClass()"></a>
            </div>
            <div class="col-md-7 card_wrap" id="card_wrap">
                <div class="row">

                    <div class="card_content_wrap">
                        <div class="card_content">
                            <a href="#" onclick="toggleClass2()"></a>
                            <h2>01</h2>
                            <h3>LOGIN</h3>
                            <p>
                                <i class="fa-solid fa-right-to-bracket"></i>
                            </p>
                        </div>
                    </div>

                    <div class="card_content_wrap">
                        <div class="card_content">
                            <a href="#" onclick="toggleClass3()"></a>
                            <h2>02</h2>
                            <h3>SIGN UP</h3>
                            <p>
                                <i class="fa-solid fa-user"></i>
                            </p>
                        </div>
                    </div>

                    <%--<div class="card_content_wrap">
                        <div class="card_content">
                            <h2>03</h2>
                            <h3>PROFILE</h3>
                            <p>
                                <i class="fa-solid fa-heart"></i>
                            </p>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>

        <p class="copyrightText">
            Copyright &copy; 2022 FOURWARD All Right Reserved.
        </p>

    </div>

    <div id="popup1">
        <div class="container_wrap section_chart">
            <div class="container">
                <div class="section_01_content_wrap">
                    <div class="linksection">
                        <div>
                            <label for="putDate">뉴스 검색 날짜 : </label
                            ><input type="text" size="8" id="putDate" placeholder="yyyyMMdd 기본값:오늘"/>
                            <label for="putKeyword">키워드 : </label
                            ><input type="text" size="10" id="putKeyword"/>
                            <button type="button" onclick="getNews_click()">전송</button>
                        </div>
                    </div>

                    <div class="chart_news_wrap">
                        <div class="chart_news_cp">
                            <div id="chart_div"><%-- ajax 적용 차트--%></div>
                            <div class="chart_search_wrap">
                                <label for="startDate_req">시작날짜 :
                                    <input type="text" id="startDate_req" size="14" placeholder="기본값 : 2년전"/>
                                </label>
                                <label for="endDate_req">종료날짜 :
                                    <input type="text" id="endDate_req" size="14" placeholder="기본값 : 오늘"/>
                                </label>
                                <label for="stockName"
                                >종목명 :
                                    <input type="text" id="stockName"/>
                                </label>
                                <button onclick="getStockData();">전송</button>
                            </div>
                        </div>
                        <div class="chart_news_np">
                            <div id="newsMain"><%-- ajax 적용 뉴스--%></div>
                        </div>
                    </div>

                    <a href="#" onclick="toggleClass()" class="popupClose">
                        <i class="fa-solid fa-xmark"></i>
                    </a>

                </div>
            </div>
        </div>
    </div>

    <div id="popup2">

        <div class="container_wrap section_chart">
            <div class="container">
                <div class="section_02_content_wrap">
                    <form class="modal-content animate" action="/user/login" method="post">
                        <div class="container">
                            <label for="login_id"><b>Username</b></label>
                            <input type="text" placeholder="Enter Username" name="user_id" id="login_id" required>

                            <label for="login_psw"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="user_password" id="login_psw"
                                   required>

                            <button type="submit">Login</button>
                            <label>
                                <input type="checkbox" checked="checked" name="remember"> Remember me
                            </label>
                        </div>

                        <div class="container" style="background-color:#f1f1f1">
                            <button type="reset" class="resetbtn">cancel</button>
                            <span class="psw">Forgot <a href="#">password?</a></span>
                        </div>
                    </form>

                    <a href="#" onclick="toggleClass2()" class="popupClose">
                        <i class="fa-solid fa-xmark"></i>
                    </a>

                </div>
            </div>
        </div>

    </div>

    <div id="popup3">

        <div class="container_wrap section_chart">
            <div class="container">
                <div class="section_03_content_wrap">
                    <form class="modal-content" method="post" action="/user/doSignUp" onsubmit="return validateForm()">
                        <div class="container">
                            <label for="signup_id"><b>ID</b></label>
                            <input type="text" placeholder="Enter ID" name="user_id" id="signup_id" required>
                            <button type="button" onclick="checkId()">아이디 중복 확인</button>

                            <label for="signup_name"><b>Name</b></label>
                            <input type="text" placeholder="Enter Name" name="user_name" id="signup_name" required>

                            <label for="signup_email"><b>Email</b></label>
                            <input type="text" placeholder="Enter Email" name="user_email" id="signup_email" required>
                            <button type="button" onclick="checkEmail()">이메일 중복 확인</button>

                            <label for="signup_psw"><b>Password</b></label>
                            <input type="password" id="signup_psw" name="user_password"
                                   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                   title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters required">

                            <label for="psw-repeat"><b>Repeat Password</b></label>
                            <input type="password" placeholder="Repeat Password" id="psw-repeat" required>

                            <label for="addr"><b>Address</b></label>
                            <input type="text" placeholder="Enter Address" name="user_addr" id="addr" required>

                            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms &
                                Privacy</a>.</p>

                            <div class="clearfix">
                                <button type="reset" class="resetbtn">cancel</button>
                                <button type="submit" class="signupbtn">Sign Up</button>
                            </div>
                        </div>
                    </form>

                    <div id="message">
                        <p id="letter" class="invalid">소문자를 최소 1개 포함하십시오.</p>
                        <p id="capital" class="invalid">대문자를 최소 1개 포함하십시오.</p>
                        <p id="number" class="invalid">숫자를 최소 1개 포함하십시오.</p>
                        <p id="length" class="invalid">최소 8글자 이상 입력하십시오.</p>
                    </div>

                    <div id="chkPsw" style="display: none">
                        <p id="pswWrong" class="invalid" style="display: none">비밀번호가 다릅니다.</p>
                        <p id="pswOk" class="valid" style="display: none">비밀번호가 일치합니다.</p>
                    </div>

                    <a href="#" onclick="toggleClass3()" class="popupClose">
                        <i class="fa-solid fa-xmark"></i>
                    </a>

                </div>
            </div>
        </div>

    </div>

</div>


<script>
    VanillaTilt.init(document.querySelectorAll(".intro_content"), {
        max: 25,
        speed: 400,
        glare: true,
        "max-glare": 1,
    });

    VanillaTilt.init(document.querySelectorAll(".card_content_wrap"), {
        max: 25,
        speed: 400,
        glare: true,
        "max-glare": 1,
    });

    for (i = 1; i < 100; i++) {
        j = 30;
        const para1 = document.createElement("li");
        const element = document.getElementById("bpwrap");
        para1.setAttribute("id", "bp" + i);
        element.appendChild(para1);

        const para2 = document.createElement("div");
        para2.setAttribute("id", "line" + i);
        para1.appendChild(para2);

        para2.setAttribute("class", "bpf");

        document.getElementById("bp" + i).style.left = j * i - 40 + "px";
    }

    function myInterval() {
        for (i = 1; i < 100; i++) {
            document.getElementById("line" + i).style.height =
                Math.floor(Math.random() * 100) + 1 + "%";
        }
    }

    setInterval("myInterval()", 1500);

    function toggleClass() {
        var cardWrap = document.getElementById("bpw");
        cardWrap.classList.toggle("toggleActive");
        var popup1 = document.getElementById("popup1");
        popup1.classList.toggle("toggleActive");
        var lcnav = document.getElementById("lc_nav_wrap");
        lcnav.classList.toggle("toggleActive");
    }

    function toggleClass2() {
        var cardWrap = document.getElementById("bpw");
        cardWrap.classList.toggle("toggleActive");
        var popup2 = document.getElementById("popup2");
        popup2.classList.toggle("toggleActive");
        var lcnav = document.getElementById("lc_nav_wrap");
        lcnav.classList.toggle("toggleActive");
    }

    function toggleClass3() {
        var cardWrap = document.getElementById("bpw");
        cardWrap.classList.toggle("toggleActive");
        var popup3 = document.getElementById("popup3");
        popup3.classList.toggle("toggleActive");
        var lcnav = document.getElementById("lc_nav_wrap");
        lcnav.classList.toggle("toggleActive");
    }

    const navlist = document.querySelectorAll(".lcn_list");

    function activeLink() {
        navlist.forEach((item) => item.classList.remove("active"));
        this.classList.add("active");

        if ($("#popup1").hasClass("toggleActive")) {
            $(".lcn_list").classList.remove("active");
            $(".lcn_list:nth-child(2)").classList.add("active");
        }

        if ($("#popup2").hasClass("toggleActive2")) {
            $(".lcn_list").classList.remove("active");
            $(".lcn_list:nth-child(4)").classList.add("active");
        }
    }

    navlist.forEach((item) => item.addEventListener("click", activeLink));
</script>
<script type="text/javascript" src="/js/user.js">
    // 사용자 검증
</script>
</body>
</html>
<script>
    if ("${user_id}" !== "") {
        alert("${user_id} 님 회원가입을 축하합니다.\n로그인 해주세요.");
    }
    if ("${error_type}" !== "") {
        alert("요청 오류 : ${error_type}");
    }
</script>