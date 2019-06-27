package com.zx;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

public class UsePsql {
	private  Connection conn;
	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}
	public static Connection connectToPsql(Connection conn) {
		 String url = "jdbc:postgresql://127.0.0.1:5432/ssm";//换成自己PostgreSQL数据库实例所在的ip地址，并设置自己的端口
         String user = "postgres";
         String password = "P@ssw0rd"; 
		try {
			Class.forName("org.postgresql.Driver");
			conn=DriverManager.getConnection(url, user, password);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd");
		}
		return conn;
	}
	
	//注册方法注册方法注册方法注册方法注册方法
		private String account;
		private String password;
		private String sex;
		public String getAccount() {
			return account;
		}

		public void setAccount(String account) {
			this.account = account;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getSex() {
			return sex;
		}

		public void setSex(String sex) {
			this.sex = sex;
		}
		public static String registUser(String account,String  password) {
			Connection conn=null;
			
			
			PreparedStatement ps=null;
			try {
				Statement stmt=UsePsql.connectToPsql(conn).createStatement();
				ResultSet rs=stmt.executeQuery("select * from users where name='" + account + "'");
				if(rs.next()) {
					account="该账号已被注册";
				}else {
				
					 	ps=UsePsql.connectToPsql(conn).prepareStatement("insert into users (name,md5pw)  values(?,?)");
						ps.setString(1, account);
						ps.setString(2, password);


						int flag = ps.executeUpdate();// 执行sql
						if (flag > 0) {// 如果被影响行数大于0
							account="注册成功";
						}else {
							account="注册失败";
						}
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			return account;
		}
		
		
		
		//用户登录方法
		public static String login(String account,String password) {
			Connection conn=null;
			UsePsql.connectToPsql(conn);
			try {    
				Statement stmt=UsePsql.connectToPsql(conn).createStatement();
				ResultSet rs=stmt.executeQuery("select * from users where name='" + account + "'");
				System.out.println("select * from users where name='" + account + "'");
				if(rs.next()) {
					if(password.equals(rs.getString(7))) {
						account="登录成功";
					}else {
						account="用户名或密码错误";
					}
				}else {
					account="没有找到该用户";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return account;
		}
		
		
		
		
		//发送广播方法
		
		//显示历史广播的方法
		
	}