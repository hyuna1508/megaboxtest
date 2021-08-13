package com.hyun.megabox;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

public class test {
	
	@RunWith(SpringJUnit4ClassRunner.class)
	@ContextConfiguration(locations = {"classpath:root-context.xml"})
	public class testform {

		@Inject
		private DataSource ds;
		private SqlSessionFactory sqlFactory;
		
		@Test
		public void testConnection() throws Exception{
			
			try(Connection con= ds.getConnection()) {
				System.out.println("\n >>>>>> Connection 출력: " + con + "\n");
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		@Test
		public void testFactory() {
			System.out.println("\n >>>>>>>>>> sqlFactory 출력: "+sqlFactory);
			
		}
		
		 @Test
		    public void testSession() throws Exception{
		        
		        try(SqlSession session = sqlFactory.openSession()){
		            
		            System.out.println(" >>>>>>>>>> session 출력 : "+session+"\n");
		            
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }
		 
	}

}
