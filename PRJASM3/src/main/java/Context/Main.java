package Context;

public class Main {
	public static void main(String[] args) {
		try {System.out.println("11");
			System.out.println(new DBContext().getConnection());
			System.out.println("2");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
}
