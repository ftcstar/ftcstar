<%@ page session="false" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.sharetechnology.engibrainz.*" %>
<%
   // Change the following constants if necessary

   final String DRIVER = "com.mysql.jdbc.Driver";
   final String DB_URL  = "jdbc:mysql://mysql.hostinger.co.uk/u135158581_vrndb";
   final String DB_USERNAME  = "u135158581_varun";
   final String DB_PASSWORD  = "sharetechnology";
   
   final String STUDENT_TABLE  = "ebz_students";
   final String STUDENT_ID  = "student_id";
   final String FIRST_NAME  = "first_name";
   final String LAST_NAME  = "last_name";
   final String STUDENT_EMAIL  = "email_address";
   final String STUDENT_PASSWORD  = "student_password";
   final String COURSES_SELECTED  = "courses_selected";
   final String TOTAL_FEES  = "total_fees";
   final String FIRST_INSTALLMENT  = "first_installment";
   final String SECOND_INSTALLMENT  = "Second_installment";
   final String THIRD_INSTALLMENT  = "third_installment";
   final String BALANCE_AMMOUNT  = "balance_ammount";
   final String COURSE_STATUS  = "course_status";

   // Load the driver class and establish a connection

   Class.forName(DRIVER);
   Connection con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

   // Run a database query to get the list of food groups

   Statement stmt = con.createStatement();
   String query = "CREATE TABLE IF NOT EXISTS "+STUDENT_TABLE+"("+
                  STUDENT_ID+" INT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT"+", "+
                  FIRST_NAME+" CHAR(30) NOT NULL"+", "+
				  LAST_NAME+" CHAR(30) NOT NULL"+", "+
				  STUDENT_EMAIL+" VARCHAR(50) NOT NULL"+", "+
				  STUDENT_PASSWORD+" VARCHAR(50) NOT NULL"+", "+
				  COURSES_SELECTED+" VARCHAR(50) NOT NULL"+", "+
				  TOTAL_FEES+" INT(6) NOT NULL"+", "+
				  FIRST_INSTALLMENT+" INT(6) NOT NULL"+", "+
				  SECOND_INSTALLMENT+" INT(6) NOT NULL"+", "+
				  THIRD_INSTALLMENT+" INT(6) NOT NULL"+", "+
				  BALANCE_AMMOUNT+" INT(6) NOT NULL"+", "+
				  COURSE_STATUS+" INT(2) NOT NULL"+")";
    stmt.executeUpdate(query);
    ResultSet rs = con.prepareStatement("SELECT * FROM STUDENT_TABLE;").executeQuery();
   

   // Store the results as a list of FoodGroup objects

   List studentList = new ArrayList();
   while (rs.next()) {
      String stdnt_ID = rs.getString(1);
      String f_name = rs.getString(2);
	  String l_name = rs.getString(3);
	  String stdnt_email = rs.getString(4);
	  String stdnt_password = rs.getString(5);
	  String c_selected = rs.getString(6);
	  String t_fees = rs.getString(7);
	  String f_installment = rs.getString(8);
	  String s_installment = rs.getString(9);
	  String t_installment = rs.getString(10);
	  String b_ammount = rs.getString(11));
	  String c_status = rs.getString(12);
      FoodGroup fg = new FoodGroup(code, desc);
      studentList.add(fg);
   }

   rs.close();
   stmt.close();
   con.close();

   // Store the list as a request attribute

   request.setAttribute("com.sharetechnology.engibrainz.StudentDetailsProvider", studentList);

   // Now forward the request

%>
<jsp:forward page="ShowStudentsData.jsp" />
