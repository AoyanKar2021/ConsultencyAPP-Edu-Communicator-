package Util;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import com.mysql.cj.jdbc.MysqlDataSource;

public class DBConnection {
	private static final String DriverName="MYSQL_DB_DRIVER_CLASS";
	private static final String UserName="USERNAME";
	private static final String Password="PASSWORD";
	private static final String URL="URL";
	
	
	private static MysqlDataSource datasource;
	private static Properties p=null;
	static {
		p=new Properties();
		try {
			
			p.load(new FileInputStream("G:\\Corona\\src\\db.properties"));
			datasource=new MysqlDataSource();
			datasource.setUrl(p.getProperty(URL));
			datasource.setUser(p.getProperty(UserName));
			datasource.setPassword(p.getProperty(Password));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		 
		 
		
	}
	public static MysqlDataSource Datasource()
	{
		return datasource;
	}
}
