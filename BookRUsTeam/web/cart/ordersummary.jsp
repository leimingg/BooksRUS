

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
    
    <h1>Your Order Summary</h1>
    
    <table class="cartTable">
        <tr>
            <th>Qty</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
        </tr>
        <c:forEach var="item" items="${cart.items}">
            <tr>
                <td>${item.quantity}</td>
                <td>${item.product.productTitle}</td>
                <td>${item.product.priceStringFormat}</td>
                <td>${item.totalCurrencyFormat}</td>
            </tr>
        </c:forEach>
        <tr>
            <td></td>
            <td></td>
            <th>Total:</th>
            <td>${order.orderTotalCurrencyFormat}</td>
        </tr>
    </table>
    
    <!--
    <c:url var="actionUrl" value="/cart/checkout.jsp"/>
    ${actionUrl}
    <form action="${actionUrl}" method="POST">
    -->
    <form action="${pageContext.request.contextPath}/ProductCatalogServlet/CartServlet/orderPayment" method="POST">
        <br>
        <input type="submit" value="Continue Checkout" id="mainButton"/>
    </form>
    
</section>
<jsp:include page="/includes/footer.jsp"/>
