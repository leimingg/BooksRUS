
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/includes/header.jsp"/>

<section>
    
    <!-- Lines for debugging purposes only
    <c:url var="actionUrl" value=""/>
    actionURL: ${actionUrl}<br>
    pageContext: ${pageContext.request.contextPath}<br>
    sessionID: ${pageContext.session.id}<br>
    userEmail: ${user.email}<br>
    -->    
    
    <div class="container-fluid">
        <div class="col-md-12">
            <h2>Business Literature Titles&nbsp;&nbsp;
            <img src="${pageContext.request.contextPath}/images/recommended.png"/></h2>
        </div>

        <c:forEach items="${categoryProducts.items}" var="item">
            <div class="col-md-2" style="text-align:center;height:5px;padding-bottom:350px;">
                <form action="CartServlet/addItem" method="POST">
                    <input type="hidden" name="productID" 
                           value="${item.productID}">
                    <input type="hidden" name="productCategory" 
                           value="${item.productCategory}">
                    <img id="bookCover" src="${pageContext.request.contextPath}/images/<c:out
                             value="${item.productImageURL}"/>" 
                         alt="Book cover" width="130" height="130" style="display: inline-block;" >
                    <p><font color="#666"><c:out value="${item.productTitle}"/></font></p>
                    <p><font color="#e4393c"><c:out value="${item.productAuthor}"/></font></p>
                    <p><fmt:formatNumber value="${item.productPrice}" 
                                      type="currency"/></p>
                    <input id="mainButton" type="submit" 
                           value="Add To Cart" 
                           onclick="this.disabled = 'disabled';
                                   this.form.submit();" />
                    <p><i>${message}</i></p>
                </form>
            </div>
        </c:forEach>
    </div>
    
</section>
<jsp:include page="/includes/footer.jsp"/>