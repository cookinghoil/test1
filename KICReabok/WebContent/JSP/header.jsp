<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
 <header>
            <div id="kangol_nav">
                <a href="kangol.do?p_page=kangol" id="kangol_icon"></a>
            </div>
            <nav>
                
                <ul>
                    <li id="main_icon"><a href="./index.do"><img src="image/header/main_title.PNG"></a></li>
                    <li id="nav_man"><a href="product.do?p_page=men">MEN</a></li>
                    <li id="nav_women"><a href="product.do?p_page=women">WOMEN</a></li>
                    <li>KIDS</li>
                    <li>FITNESS</li>
                    <li id="nav_classic">CLASSIC</li>
                    <li>ONLINE ONLY</li>
                    <li id="nav_brand"><a href="brand.do">BRAND</a></li>
                    <li><a href="managerPage.do">ManagerPage</a></li>
                    <li><a href="userModify.do">userModify</a></li>
                    <div id="header_loginbox">
                    <li id="find"><img src="image/header/find.JPG"/></li>
                    <c:if test="${id == null}">
                    <li id="user"><img src="image/header/login.JPG"/></li>
                      </c:if>
                      <c:if test="${id != null}">
                      <li> ${id} </li>
                        </c:if>
                    <li id="basket"><a href="shop_cart.do"><img src="image/header/carrier.JPG"/></a></li>
                    </div>
                </ul>
            </nav>
        </header>

      
        <div id="sub_nav">
            <div id="sub_nav_back">
                <h3>MEN</h3>
                <ul>
                    <li>신상품</li>
                    <li>인기상품</li>
                    <li>할인상품</li>
                    <li>아울렛</li>
                    <li>스피드배송</li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>CATEGORY</h3>
                <ul>
                    <li>신발</li>
                    <li>의류</li>
                    <li>용품</li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>FITNESS</h3>
                <ul>
                    <li>트레이닝</li>
                    <li>러닝</li>
                    <li>농구</li>
                    <li>아웃도어</li>
                    <li>기타</li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>BRAND</h3>
                <ul>
                    <li>피트니스</li>
                    <li>클래식</li>
                </ul>
            </div>
            <div id="sub_nav_img">
               <img src="image/header/sub_header_1.jpg"/>
            </div>
        </div>
        <!--  여기 사이에 작성하세요! -->
        <div id="sub_nav2">
            <div id="sub_nav_back">
                <h3>WOMEN</h3>
                <ul>
                    <li>신상품</li>
                    <li>인기상품</li>
                    <li>할인상품</li>
                    <li>아울렛</li>
                    <li>스피드배송</li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>CATEGORY</h3>
                <ul>
                    <li>신발</li>
                    <li>의류</li>
                    <li>용품</li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>FITNESS</h3>
                <ul>
                    <li>트레이닝</li>
                    <li>러닝</li>
                    <li>농구</li>
                    <li>아웃도어</li>
                    <li>기타</li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>BRAND</h3>
                <ul>
                    <li>피트니스</li>
                    <li>클래식</li>
                </ul>
            </div>
            <div id="sub_nav_img">
               <img src="image/header/sub_header_2.jpg"/>
            </div>
        </div>
    
        <div id="sub_nav3">
            <div id="sub_nav_back">
                <ul>
                    <li><h3>NEW</h3></li>
                    <li><h3>BEST</h3></li>
                    <li><h3>SALE</h3></li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>MEN</h3>
                <ul>
                    <li>전체보기</li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>WOMEN</h3>
                <ul>
                    <li>전체보기</li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>COLLECTION</h3>
                <ul>
                    <li>퓨리 컬렉션</li>
                    <li>퓨리라이트</li>
                </ul>
            </div>
            <div id="sub_nav_img">
               <img src="image/header/sub_header_3.jpg"/>
            </div>
        </div>
    
        <div id="sub_nav4">
            <div id="sub_nav_noback">
                <h3>FITNESS</h3>
                <ul id="list_novisible">
                    <li><img src="image/header/sub_header_4.jpg"/></li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>CLASSIC</h3>
                <ul id="list_novisible">
                    <li><img src="image/header/sub_header_5.jpg"/></li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <h3>CAMPAIGNS</h3>
                <ul  id="list_novisible">
                    <li><img src="image/header/sub_header_6.jpg"/></li>
                </ul>
            </div>
            <div id="sub_nav_noback">
                <ul id="list_visible">
                    <li><h3>REECLUB</h3></li>
                    <li><h3>PROMOTION</h3></li>
                </ul>
            </div>
            <div id="sub_nav_img">
              
            </div>
         
        </div>
        <div id="nav_login">
            <h5 id="nav_login_text"><a href="login.do">로그인</a> | <a href="signUP.do">회원가입</a></h5>
        </div>
