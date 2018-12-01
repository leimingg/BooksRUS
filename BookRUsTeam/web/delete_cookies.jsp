

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/includes/header.jsp"/>
        
<section>
    
    <c:url var="actionUrl" value=""/>
    actionURL: ${actionUrl}<br>
    pageContext: ${pageContext.request.contextPath}<br>
    sessionID: ${pageContext.session.id}<br>
    userEmail: ${user.email}<br>
    
    <p><i>${message}</i></p>
    <h1>Cookies</h1>
    <p>All persistent cookies have been removed from this browser.</p>
    <!--
    <c:url var="actionUrl" value="/images/"/>
    ${actionUrl}
    ${pageContext.request.contextPath}
    -->
    <img id="bookStack" 
         src="${pageContext.request.contextPath}/images/books-20clip-20art-jixpyXdiE.png" 
         alt="Book stack">
</section>
<jsp:include page="/includes/footer.jsp"/>
