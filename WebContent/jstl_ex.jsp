<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${'Welcome to javaTpoint'}" />
	<br>

	<c:set var="Income" scope="session" value="${4000*4}" />
	<c:out value="${Income}" />
	<br>

	<c:set var="income" scope="session" value="${4000*4}" />
	<c:if test="${income > 8000}">
		<p>
			My income is:
			<c:out value="${income}" />
		<p>
	</c:if>

	<c:set var="income" scope="session" value="${4000*4}" />
	<p>
		Your income is :
		<c:out value="${income}" />
	</p>
	<c:choose>
		<c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>
		<c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>
		<c:otherwise>  
       Income is undetermined...  
    </c:otherwise>
	</c:choose>
	<br>
	<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}" />
		<p>
	</c:forEach>
	<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">
		<c:out value="${name}" />
		<p>
	</c:forTokens>

	<c:url value="/index1.jsp" var="completeURL">
		<c:param name="trackingId" value="786" />
		<c:param name="user" value="Nakul" />
	</c:url>
	${completeURL}


	<c:set var="String" value="Welcome to javatpoint" />

	<c:if test="${fn:contains(String, 'javatpoint')}">
		<p>Found javatpoint string
		<p>
	</c:if>

	<c:if test="${fn:contains(String, 'JAVATPOINT')}">
		<p>Found JAVATPOINT string
		<p>
	</c:if>


	<c:set var="String" value="Welcome to javatpoint" />

	<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
		<p>Found javatpoint string
		<p>
	</c:if>

	<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">
		<p>Found JAVATPOINT string
		<p>
	</c:if>


	<c:set var="string1" value="It is first String." />
	<c:set var="string2" value="It is <xyz>second String.</xyz>" />

	<p>With escapeXml() Function:</p>
	<p>string-1 : ${fn:escapeXml(string1)}</p>
	<p>string-2 : ${fn:escapeXml(string2)}</p>

	<p>Without escapeXml() Function:</p>
	<p>string-1 : ${string1}</p>
	<p>string-2 : ${string2}</p>

	<c:set var="string1" value="It is first String." />
	<c:set var="string2" value="It is <xyz>second String.</xyz>" />

	<p>Index-1 : ${fn:indexOf(string1, "first")}</p>
	<p>Index-2 : ${fn:indexOf(string2, "second")}</p>


	<c:set var="str1" value="Welcome to JSP        programming         " />
	<p>String-1 Length is : ${fn:length(str1)}</p>

	<c:set var="str2" value="${fn:trim(str1)}" />
	<p>String-2 Length is : ${fn:length(str2)}</p>
	<p>Final value of string is : ${str2}</p>

	<c:set var="msg" value="The Example of JSTL fn:startsWith() Function" />
	The string starts with "The": ${fn:startsWith(msg, 'The')}
	<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}
	<c:set var="string" value="This is the first string." />
	${fn:substring(string, 5, 17)}

	<c:set var="str1" value="This is first string" />
	<c:set var="str2" value="Hello" />
	Length of the String-1 is: ${fn:length(str1)}
	<br> Length of the String-2 is: ${fn:length(str2)}

</body>
</html>