

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
    
    <h1>Your cart</h1>
    <c:choose>
      <c:when test="${cart == null}">
          <p>Your cart is empty.</p>
      </c:when>
      <c:otherwise>
        <p><i>${message}</i></p>
        <table class="cartTable">
           <tr>
            <th colspan="2" >Quantity</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
            <th>&nbsp;</th>
         </tr>
         <c:forEach var="item" items="${cart.items}">
             <tr>
                 <td>
                     <form action="${pageContext.request.contextPath}/ProductCatalogServlet/CartServlet/updateItem" method="POST">
                         <input type="hidden" name="productID" 
                                value="${item.product.productID}"/>
                         <input type="hidden" name="productCategory" 
                                value="${item.product.productCategory}"/>
                         <input type="text" name="productQty" 
                                value="${item.quantity}" class="cartQtyInput"/>
                         <!--
                         <input type="submit" value="Update" id="mainButton">
                         -->
                         <td>
                             <input type="submit" value="Update" id="mainButton">
                         </td>
                     </form>
                 </td>
                 <td>${item.product.productTitle}</td>
                 <td>${item.product.priceStringFormat}</td>
                 <td>${item.totalCurrencyFormat}</td>
                 <td>
                     <form action="${pageContext.request.contextPath}/ProductCatalogServlet/CartServlet/removeItem" method="POST">
                         <input type="hidden" name="productID" 
                                value="${item.product.productID}"/>
                         <input type="hidden" name="productCategory" 
                                value="${item.product.productCategory}"/>
                         <input type="submit" value="Remove" id="mainButton">
                     </form>
                 </td>
             </tr>
         </c:forEach> 
        <tr>
            <td colspan="6">
                <p><b>To change the quantity for an item</b>, enter the new 
                quantity and click on the Update button.</p>
                <p><b>To remove an item</b>, click on the Remove button.</p>
            </td>
        </tr>
      </table>
      </c:otherwise>
    </c:choose>
    
    <div class="cartButtons">
        
        <form action="${pageContext.request.contextPath}/ProductCatalogServlet/CartServlet/keepShopping" method="POST">
            <input type="submit" value="Continue Shopping" id="mainButton">
        </form>

        <form action="${pageContext.request.contextPath}/ProductCatalogServlet/CartServlet/orderSummary" method="POST">
            <input type="submit" value="Checkout" id="mainButton">
        </form>
    </div>
    

</section>
<jsp:include page="/includes/footer.jsp"/>
