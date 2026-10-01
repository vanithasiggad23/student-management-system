package com.studentapp1.dao;

import java.util.ArrayList;

import com.studentapp1.dto.student;

public interface StudentDao {

	public boolean insertStudent(student s);
	public boolean updateStudent(student s);
	public boolean deleteStudent(student s);
	public student getStudent(String email,String password);
	public student getStudent(String email,long phone);
	public ArrayList<student> getstudent();
	public boolean updatePassword(String email, String phone, String newPassword);
}
