
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<style>           
.blue-button{
	background: #25A6E1;
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:3px 5px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:12px;
	border-radius:2px;
	-moz-border-radius:2px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}     
table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 50%;
}
th {
  background: SteelBlue;
  color: white;
}
 td,th{
                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }
</style>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"1613",secure:"1616"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/springrestclient/WebRoot/WEB-INF/customerDetails.jsp">
<form:form method="post" modelAttribute="customer" action="${pageContext.request.contextPath}/addCustomer">
<table>
		<tr>
			<th colspan="2">Add Customer</th>
		</tr>
		<tr>
	<form:hidden path="id" />
          <td><form:label path="customerName">Customer Name:</form:label></td>
          <td><form:input path="customerName" size="30" maxlength="30"></form:input></td>
        </tr>
		<tr>
			    <td><form:label path="email">Email:</form:label></td>
          <td><form:input path="email" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit"
				class="blue-button" /></td>
		</tr>
	</table> 
</form:form>
</br>
<h3 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/springrestclient/WebRoot/WEB-INF/customerDetails.jsp">Customer List</h3>
<c:if test="${!empty listOfCustomers}">
	<table class="tg">
	<tr>
		<th width="80">Id</th>
		<th width="120">Customer Name</th>
		<th width="120">Email</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listOfCustomers}" var="customer">
		<tr>
			<td>${customer.id}</td>
			<td>${customer.customerName}</td>
			<td>${customer.email}</td>
			<td><a href="<c:url value='/updateCustomer/${customer.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/deleteCustomer/${customer.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
