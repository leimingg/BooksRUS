
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/includes/header.jsp"/>

<section>
    <!-- Lines for debugging purposes only
    <c:url var="actionUrl" value=""/>
    actionURL: ${actionUrl}<br>
    pageContext: ${pageContext.request.contextPath}<br>
    sessionID: ${pageContext.session.id}<br>
    userEmail: ${user.email}<br>
    -->    
    
    <p><i>${message}</i></p>
    <!--
    <img id="bookStack" 
         src="${pageContext.request.contextPath}/images/books-20clip-20art-jixpyXdiE.png" 
         alt="Book stack">
    -->
    
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="${pageContext.request.contextPath}/images/BF1.JPG" alt="Generic placeholder image" width="140" height="140">
            <h2>Black Friday</h2>
            <p>We carry a unique variety of new and used books. While we are famous for our low prices, you can find especially enticing deals during the Black Friday sale.</p>

        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="${pageContext.request.contextPath}/images/free-shipping.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Free Shipping</h2>
            <p>We provide free shipping service for every order.Free tracking on every package. No minimum spending requirement. We have though of everything to make it as easy as possible for you.</p>

        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="${pageContext.request.contextPath}/images/hassle-free-returns.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>Free Return</h2>
            <p>You can return all books purchased at Books R US for a full refund within 180 days. We pay your return shipping. No questions asked!</p>

        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
    
    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Classic Books</h2>
            <p class="lead">We only collect a book as classic only if it is exemplary or noteworthy. For example, it is listed in a list of great books by an imprimatur.Classics are those great pieces of literature considered worthy to be studied from youth to old age.  "Classics are books your fathers give you and you keep them to give to your children" </p>
            <p><a class="btn btn-default" role="button" href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showClassics">View details &raquo;</a></p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/images/classicExample.JPG" alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">
    
    <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
            <h2 class="featurette-heading">Business Books</h2>
            <p class="lead">We collected best Business, Economic and Management books 2018 to give you extra pep you need to follow-through with your career goals. Many of these books listed for the Financial Time and McKinsey Business Books of the Year Award.These business books are great for anyone looking to start or 
                grow a business, advance their careers, build their skilss and become more effective in life and work.</p>
            <p><a class="btn btn-default" role="button" href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showBusiness">View details &raquo;</a></p>
        </div>
        <div class="col-md-5 col-md-pull-7">
            <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/images/businessExample.JPG" alt="Generic placeholder image">
        </div>
    </div>

    <hr class="featurette-divider">
    
    <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">Technology Books</h2>
                <p class="lead">We collected most popular books that help inform readers about the trends, skills, challenges, and predictions for a technological world. These technology books will help you create a place where everything you imagine can exist.</p>
                <p><a class="btn btn-default" role="button" href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showTechnology">View details &raquo;</a></p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/images/technologyExample.JPG" alt="Generic placeholder image">
            </div>
        </div>

    <hr class="featurette-divider">
    
</section>
<jsp:include page="/includes/footer.jsp"/>
