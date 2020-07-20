package com.ls.test;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ls.entity.Student;


public class TestMybatis {
	public static void main(String[] args) throws IOException {
		Reader reader = Resources.getResourceAsReader("conf.xml");
		SqlSessionFactory sqlFactory = new SqlSessionFactoryBuilder().build(reader);
		SqlSession openSession = sqlFactory.openSession();
		
		//Student student = openSession.selectOne("queryStudentByid",1001);
		//System.err.println(student);
		
		String statment = "com.ls.entity.Student.queryAllStudent";
		List<Student> students = openSession.selectList(statment);
		for(Student student:students) {
			System.out.println(student);
		}
		
//		String statment = "com.ls.entity.Student.addStudent";
//		int insert = openSession.insert(statment, new Student(1004,"zl",22,"ww"));
		//System.out.println(insert);
		
//		String statment = "com.ls.entity.Student.updateStudentByid";
//		int update = openSession.update(statment, new Student(1001,"èà»˝",28,"mm"));
//		System.out.println(update);
		
//		String statment = "com.ls.entity.Student.deleteStudentByid";
//		int delete = openSession.update(statment, 1004);
//		System.out.println(delete);
		
		openSession.commit(true);
		openSession.close();
		
	}

}
