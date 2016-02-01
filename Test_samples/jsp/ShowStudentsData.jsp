<%@ page session="false" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sharetechnology.engibrainz.*" %>
<html>
<head>
<title>EngiBrain'z Student database</title>
<style>
   body, td {
      background-color: #FFFFFF;
      font: 8pt Sans-Serif;
   }
</style>
</head>
<body>
<center>
<h3>Student database</h3>

<%--  Get the list of students objects
      that was created by database calls --%>

<%
   List studentList = (List) request.getAttribute
      ("com.sharetechnology.engibrainz.StudentDetailsProvider");
   if (studentList == null)
      throw new ServletException
         ("No com.sharetechnology.engibrainz.StudentDetailsProvider attribute");
   Iterator stuList = studentList.iterator();
%>

<table border="1" cellpadding="3" cellspacing="0">
<tr>
    <th>Student_ID</th>
	<th>Student_FName</th>
	<th>Student_LName</th>
	<th>Student_Email</th>
	<th>Student_Password</th>
	<th>Courses_Details</th>
	<th>Total_Fees</th>
	<th>First_Installment</th>
	<th>Second_Installment</th>
	<th>Third_Installment</th>
	<th>Balance_Ammount</th>
	<th>Course_Status</th>
</tr>

<%--  Loop through the list and print each item --%>

<%
   while (stuList.hasNext()) {
      StudentDetailsProvider sdp = (StudentDetailsProvider) stuList.next();
%>
<tr>
   <td><%= sdp.getStudentID() %></td>
   <td><%= sdp.getStudentFirstName() %></td>
   <td><%= sdp.getStudentLastName() %></td>
   <td><%= sdp.getStudentEmail() %></td>
   <td><%= sdp.getStudentPassword() %></td>
   <td><%= sdp.getStudentCoursesDetails() %></td>
   <td><%= sdp.getStudentTotalFees() %></td>
   <td><%= sdp.getStudentFirstInstallment() %></td>
   <td><%= sdp.getStudentSecondInstallment() %></td>
   <td><%= sdp.getStudentThirdInstallment() %></td>
   <td><%= sdp.getStudentBalanceAmmount() %></td>
   <td><%= sdp.getStudentCourseStatus() %></td>
</tr>
<%
   }
%>
</center>
</body>
</table>
