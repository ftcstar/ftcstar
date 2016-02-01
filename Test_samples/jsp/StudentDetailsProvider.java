package com.sharetechnology.engibrainz;

/**
* A helper class to provide Engibrain'z student details
*/
public class StudentDetailsProvider
{
   private int stu_id;
   private String f_name;
   private String l_name;
   private String s_email;
   private String s_pwd;
   private String c_details;
   private int t_fees;
   private int f_installment;
   private int s_installment;
   private int t_installment;
   private int b_ammount;
   private int c_status;

   /**
   * constructor for StudentDetailsProvider DataBase helper class.
   */
   public StudentDetailsProvider(int stu_id, String f_name, String l_name, String s_email, String s_pwd,
                                 String c_details, int t_fees, int f_installment, int s_installment, int t_installment,
								 int b_ammount, int c_status) {
      this.stu_id = stu_id;
      this.f_name = f_name;
	  this.l_name = l_name;
      this.s_email = s_email;
	  this.s_pwd = s_pwd;
      this.c_details = c_details;
	  this.t_fees = t_fees;
      this.f_installment = f_installment;
	  this.s_installment = s_installment;
      this.t_installment = t_installment;
	  this.b_ammount = b_ammount;
      this.c_status = c_status;
   }

   /**
   * Returns the stu_id.
   */
   public int getStudentID()
   {
      return stu_id;
   }

   /**
   * Sets the stu_id.
   * @param stu_id.
   */
   public void setStudentID(int stu_id)
   {
      this.stu_id = stu_id;
   }

   /**
   * Returns the description.
   */
   public String getStudentFirstName()
   {
      return f_name;
   }

   /**
   * Sets the f_name.
   * @param f_name.
   */
   public void setStudentFirstName(String f_name)
   {
      this.f_name = f_name;
   }
      /**
   * Returns the l_name.
   */
   public String getStudentLastName()
   {
      return l_name;
   }

   /**
   * Sets the l_name.
   * @param l_name.
   */
   public void setStudentLastName(String l_name)
   {
      this.l_name = l_name;
   }

   /**
   * Returns the s_email.
   */
   public String getStudentEmail()
   {
      return s_email;
   }

   /**
   * Sets the s_email.
   * @param s_email.
   */
   public void setStudentEmail(String s_email)
   {
      this.s_email = s_email;
   }
   /**
   * Returns the s_pwd.
   */
   public String getStudentPassword()
   {
      return s_pwd;
   }

   /**
   * Sets the s_pwd.
   * @param s_pwd.
   */
   public void setStudentPassword(String s_pwd)
   {
      this.s_pwd = s_pwd;
   }

   /**
   * Returns the c_details.
   */
   public String getStudentCoursesDetails()
   {
      return c_details;
   }

   /**
   * Sets the c_details.
   * @param c_details.
   */
   public void setStudentCoursesDetails(String c_details)
   {
      this.c_details = c_details;
   }
      /**
   * Returns the t_fees.
   */
   public int getStudentTotalFees()
   {
      return t_fees;
   }

   /**
   * Sets the t_fees.
   * @param t_fees.
   */
   public void setStudentTotalFees(int t_fees)
   {
      this.t_fees = t_fees;
   }

   /**
   * Returns the f_installment.
   */
   public int getStudentFirstInstallment()
   {
      return f_installment;
   }

   /**
   * Sets the f_installment.
   * @param f_installment.
   */
   public void setStudentFirstInstallment(int f_installment)
   {
      this.f_installment = f_installment;
   }
      /**
   * Returns the s_installment.
   */
   public int getStudentSecondInstallment()
   {
      return s_installment;
   }

   /**
   * Sets the s_installment.
   * @param s_installment.
   */
   public void setStudentSecondInstallment(int s_installment)
   {
      this.s_installment = s_installment;
   }

   /**
   * Returns the t_installment.
   */
   public int getStudentThirdInstallment()
   {
      return t_installment;
   }

   /**
   * Sets the t_installment.
   * @param t_installment.
   */
   public void setStudentThirdInstallment(int t_installment)
   {
      this.t_installment = t_installment;
   }
      /**
   * Returns the b_ammount.
   */
   public int getStudentBalanceAmmount()
   {
      return b_ammount;
   }

   /**
   * Sets the b_ammount.
   * @param b_ammount.
   */
   public void setStudentBalanceAmmount(int b_ammount)
   {
      this.b_ammount = b_ammount;
   }

   /**
   * Returns the c_status.
   */
   public String getStudentCourseStatus()
   {
	 if(c_status == 0) {
		 return "Course yet to start";
	 } else if(c_status == 1){
		  return "Course going on";
	 } else {
		 return "Course completed";
	 }
      
   }

   /**
   * Sets the c_status.
   * @param c_status.
   */
   public void setStudentCourseStatus(int c_status)
   {
      this.c_status = c_status;
   }
}
