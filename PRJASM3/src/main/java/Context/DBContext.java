package Context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {

	
		// TODO Auto-generated method stub
		public Connection getConnection() throws Exception{
			String url="jdbc:sqlserver://localhost:1433;"
		            + "databaseName=ShoppingDB;"
		            + "encrypt=false;TrustServerCertificate=True";
	
				
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			return DriverManager.getConnection(url, userID, password);
		}
	
		
		private final String userID="sa";
		private final String password="123456";

}
