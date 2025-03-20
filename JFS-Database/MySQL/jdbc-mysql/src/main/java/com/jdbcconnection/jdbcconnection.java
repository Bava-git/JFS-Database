package com.jdbcconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class jdbcconnection {

	public static void main(String[] args) {

		// SQL database details
		String url = "jdbc:mysql://localhost:3310/EmployeeDB";
		String user = "root";
		String password = "root";

		// Data to insert
		Object[][] employeeData = { { 101, "Jenny", 25, 10000 }, { 102, "Jacky", 30, 20000 }, { 103, "Joe", 20, 40000 },
				{ 104, "John", 40, 80000 }, { 105, "Shameer", 25, 90000 }, };

		// SQL Query for insert data
		String sqlQuery = "insert into employees (empcode, empname, empage, esalary) VALUES (?, ?, ?, ?)";

		try {
			// Load the driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			System.out.println("Connection Established Successfully");

			PreparedStatement pstmt = con.prepareStatement(sqlQuery);

			int status = 0;

			// Insert each employee record
			for (Object[] employee : employeeData) {
				pstmt.setInt(1, (int) employee[0]);
				pstmt.setString(2, (String) employee[1]);
				pstmt.setInt(3, (int) employee[2]);
				pstmt.setInt(4, (int) employee[3]);
				status = status + pstmt.executeUpdate();
			}
			
			// confirmation of data insert and count
			if (status > 0) {
				System.out.println(status + " Data's Successfully inserted into DB.");
			}

			// close the connections
			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
