

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
    <c:url var="actionUrl" value="/AccountServlet/login"/>
    <form action="${actionUrl}" method="POST">
        <p>Please enter your login credentials.</p><br>
        Email:<br>
        <input type="text" name="email" required><br><br>
        Password:<br>
        <input type="password" name="password" required><br><br>
        <input type="submit" value="Login" id="mainButton"><br><br>
    </form>
    <p>Don't have an account?</p>
    <p>Create one here:
        <a href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showRegistration">Register</a></p>
</section>
<jsp:include page="/includes/footer.jsp"/>