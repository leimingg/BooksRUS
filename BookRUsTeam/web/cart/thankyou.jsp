

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
    
    <h1>Thank you, ${user.firstName}!</h1>
    <p><br>
        Your order has been submitted and it's being processed.<br>
        A confirmation was sent to your email on file.
    </p>
</section>

<jsp:include page="/includes/footer.jsp"/>
