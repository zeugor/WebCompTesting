<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--  tagfiles -->
<%@ taglib prefix="my-1a" uri="tagLibInDD" %>
<%@ taglib prefix="my-1a_2" uri="tagLibInDD_modifyingTheUri" %>
<%@ taglib prefix="my-1b" uri="tagFileWithUri" %>
<%@ taglib prefix="my-1c" uri="/WEB-INF/tld/noUri.tld" %>
<%@ taglib prefix="my-2" tagdir="/WEB-INF/tags" %>

<!-- el function -->
<%@ taglib prefix="elF_1a" uri="el_1a" %>
<%@ taglib prefix="elF_1b" uri="elFuntionURI" %>
<%@ taglib prefix="elF_1c" uri="/WEB-INF/tld/elFunctionsTld.tld" %>

<!-- tld in a jar -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>



${elF_1a:rollIt("hola")}
${elF_1b:rollIt("holas") }
${elF_1c:rollIt("holasr") }

//////////

<my-1a:TagFileSample_NoUri>
	<jsp:attribute name="user">elier</jsp:attribute>
	<jsp:body>hola mundo</jsp:body>
</my-1a:TagFileSample_NoUri>
<my-1a_2:TagFileSample_URI user="pepito">blablabla</my-1a_2:TagFileSample_URI>
<my-1b:TagFileSample_URI user="pepito">blablabla</my-1b:TagFileSample_URI>
<my-1c:TagFileSample_NoUri user="pepito">blablabla</my-1c:TagFileSample_NoUri>
<my-2:TagFileSample user="pepito">blablabla</my-2:TagFileSample>

<br />

</body>
</html>