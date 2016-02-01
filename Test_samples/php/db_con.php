<?php
#sample code for Engibrainz db connection and creating table.
define('DB_NAME', 'u135158581_vrndb');
define('DB_USER', 'u135158581_varun');
define('DB_PASS', 'sharetechnology');
define('DB_HOST', 'mysql.hostinger.co.uk');

$link = mysql_connect(DB_HOST, DB_USER, DB_PASS);

if (!$link) {
    die('There was a problem when trying to connect to the host. Please visit contact us for Our Support. Error: ' . mysql_error());
}	

$db_selected = mysql_select_db(DB_NAME, $link);

if (!$link) {
    die('There was a problem when trying to connect to the host. Please visit contact us for Our Support. Error: ' . mysql_error());
}
echo "Connection established successfully\n";
$query = "SELECT student_id FROM ebz_students";
$result = mysqli_query($link, $query);

if(empty($result)) {
      
	  // Attempt create table query execution
    $query = "CREATE TABLE IF NOT EXISTS ebz_students(
                                   student_id INT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
								   first_name CHAR(30) NOT NULL, 
								   last_name CHAR(30) NOT NULL, 
								   email_address VARCHAR(50) NOT NULL, 
								   student_password VARCHAR(50) NOT NULL, 
								   courses_selected VARCHAR(50) NOT NULL, 
								   total_fees INT(6) NOT NULL, 
								   first_installment INT(6) NOT NULL, 
								   Second_installment INT(6) NOT NULL, 
								   third_installment INT(6) NOT NULL, 
								   balance_ammount INT(6) NOT NULL)";
	$result = mysqli_query($dbConnection, $query);
	if (!$result) {
		echo "ERROR: Could not able to execute $query. " . mysqli_error($link)
        die("query failed: " . msql_error());
    } else {
		echo "Table ebz_students created successfully";
    }
}  
   mysql_close($conn);
?>