package com.fuel.Util.Employee;

public class CommonConstant {

	//table name
	public static String TBL_EMPLOYEE ="employees";
			
	//colume names 
	public static String CLM_EMPID = "empID";
	
	public static String CLM_FNAME= "fname";
	
	public static String CLM_LNAME= "lname";
	
	public static String CLM_SALARY = "salary";
	
	public static String CLM_DESIGNATION = "designation";
	
	public static String CLM_EMAIL = "email";

	
	public static String createEmpTable= "CREATE TABLE IF NOT EXISTS "+TBL_EMPLOYEE+"( " + 
			CLM_EMPID  + " int NOT NULL AUTO_INCREMENT," + 
			CLM_FNAME  + " varchar(255) NOT NULL," + 
			CLM_LNAME  + " varchar(255) NOT NULL," + 
			CLM_SALARY + " Double," + 
			CLM_DESIGNATION +" varchar(255) NOT NULL," + 
			CLM_EMAIL + " varchar(255) NOT NULL," +
			" PRIMARY KEY ("+CLM_EMPID+"))";
	
	public static String getEmpDetails= "SELECT * FROM "+TBL_EMPLOYEE;
	
	public static String insertEmpDetails = "INSERT INTO "+TBL_EMPLOYEE+"("+CLM_FNAME+","+CLM_LNAME+", "+CLM_SALARY+", "+CLM_DESIGNATION+","+CLM_EMAIL+") VALUES (?,?,?,?,?)";

	public static String getEmpDetailsByID ="SELECT * FROM "+TBL_EMPLOYEE+" WHERE "+CLM_EMPID+"=?";
	
	public static String getEmpDetailsByEmail ="SELECT * FROM "+TBL_EMPLOYEE+" WHERE "+CLM_EMAIL+"=?";
	
	public static String updateEmpDetails = "UPDATE "+TBL_EMPLOYEE+" SET "+CLM_FNAME+"= ?, "+CLM_LNAME+"= ?, "+CLM_SALARY+"=?,"+CLM_DESIGNATION+"=?,"+CLM_EMAIL+"=? WHERE "+CLM_EMPID+"=?;";

	public static String deleteEmpDetails = "DELETE FROM "+TBL_EMPLOYEE+" WHERE "+CLM_EMPID+"=? ";
	

}
