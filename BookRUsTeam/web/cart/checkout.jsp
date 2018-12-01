

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
    
    <h3>Please enter your shipping and payment details below:</h3>
    <table>
    <tr>
    <form action="${pageContext.request.contextPath}/ProductCatalogServlet/CartServlet/submitPayment" method="POST">
        <td>First Name:<br>
            <input type="text" name="firstName" size="25" required>&nbsp;&nbsp;&nbsp;
        </td>
        <td colspan="2">Last Name:<br>
            <input type="text" name="lastName" size="25" required>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3"><i>Shipping Information</i></td>
    </tr>
    <tr>
        <td colspan="3">Address:<br>
        <input type="text" name="address" size="50" required>
        </td>
    </tr>
    <tr>
        <td>City:<br>
        <input type="text" name="city" size="20" required>&nbsp;&nbsp;&nbsp;
        </td>
        <td>State:<br>
        <select name="state">
            <option value="AK">AK</option>
            <option value="AL">AL</option>
            <option value="AR">AR</option>
            <option value="AZ">AZ</option>
            <option value="CA">CA</option>
            <option value="CO">CO</option>
            <option value="CT">CT</option>
            <option value="DC">DC</option>
            <option value="DE">DE</option>
            <option value="FL">FL</option>
            <option value="GA">GA</option>
            <option value="HI">HI</option>
            <option value="IO">IA</option>
            <option value="ID">ID</option>
            <option value="IL">IL</option>
            <option value="IN">IN</option>
            <option value="KA">KS</option>
            <option value="KE">KY</option>
            <option value="LA">LA</option>
            <option value="MA">MA</option>
            <option value="MD">MD</option>
            <option value="ME">ME</option>
            <option value="MI">MI</option>
            <option value="MN">MN</option>
            <option value="MO">MO</option>
            <option value="MS">MS</option>
            <option value="MT">MT</option>
            <option value="NE">NE</option>
            <option value="NH">NH</option>
            <option value="NJ">NJ</option>
            <option value="NM">NM</option>
            <option value="NV">NV</option>
            <option value="NC">NC</option>
            <option value="ND">ND</option>
            <option value="NY">NY</option>
            <option value="OH">OH</option>
            <option value="OK">OK</option>
            <option value="OR">OR</option>
            <option value="PA">PA</option>
            <option value="RI">RI</option>
            <option value="SC">SC</option>
            <option value="SD">SD</option>
            <option value="TN">TN</option>
            <option value="TX">TX</option>
            <option value="UT">UT</option>
            <option value="VA">VA</option>
            <option value="VT">VT</option>
            <option value="WA">WA</option>
            <option value="WI">WI</option>
            <option value="WV">WV</option>
            <option value="WY">WY</option>
        </select>
        </td>
        <td>Zip:<br>
            <input type="text" name="zip" size="7" maxlength="5" 
                pattern="[0-9]{5}" required>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3"><i>Payment Information</i></td>
    </tr>
    <tr>
        <td colspan="3">Credit Card Type:<br>
        <select name="cardType" size="1">
            <option value="Visa">Visa</option>
            <option value="Mastercard">Mastercard</option>
            <option value="Discover">Discover</option>
        </select>
        </td>
    </tr>
    <tr>
        <td>Credit Card Number:<br>
        <input type="text" name="cardNumber" size="20" maxlength="16"
               pattern="[0-9]{16}" required>
        </td>
        <td>Exp. Month:<br>
        <select name="cardMonth">
            <option value="01">01</option>
            <option value="02">02</option>
            <option value="03">03</option>
            <option value="04">04</option> 
            <option value="05">05</option>
            <option value="06">06</option>
            <option value="07">07</option>
            <option value="08">08</option> 
            <option value="09">09</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option> 
        </select>
        </td>
        <td>Exp. Year:<br>
        <select name="cardYear">
            <option value="${currentYear}">${currentYear}</option>
            <option value="${currentYear + 1}">${currentYear + 1}</option>
            <option value="${currentYear + 2}">${currentYear + 2}</option>
            <option value="${currentYear + 3}">${currentYear + 3}</option>
            <option value="${currentYear + 4}">${currentYear + 4}</option>
            <option value="${currentYear + 5}">${currentYear + 5}</option>
        </select>
        </td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3"><input type="submit" value="Submit Payment" id="mainButton"/>
        </td>
    </tr>
    </form>
    </table>
    
</section>
<jsp:include page="/includes/footer.jsp"/>