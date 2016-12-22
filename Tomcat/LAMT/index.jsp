<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:query var="subjects" dataSource="jdbc/acme">
    SELECT subject_id, name, counselor, address FROM Subject
</sql:query> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Acme Inc.</title>
</head>
<body>
        <h1>
        	Welcome to IBM LAB Cagliari Cloud Development portal.
        </h1>
        <p>
        Acme Inc. offers expert counseling in a wide range of fields. The following table lists the details of counselor in your area.
        </p>

        <table border="1">
         	<col width="20">
  			<col width="200">
			<col width="200">
			<col width="200">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Counselor Name</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
				<c:forEach var="row" items="${subjects.rows}">
					<tr>
						<td>
							${row.subject_id}
						</td>
						<td>
							${row.name}
						</td>
						<td>
							${row.counselor}
						</td>
						<td>
							${row.address}
						</td>								
					</tr>
                      </c:forEach>
            </tbody>
        </table>
</body>
</html>
