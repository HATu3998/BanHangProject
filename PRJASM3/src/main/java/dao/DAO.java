package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import Context.DBContext;
import MainControl.Account;
import model.Cart;
import model.Orders;
import model.Product;

public class DAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<>();
		String query = "select * from products";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5),
						rs.getString(6), rs.getString(7)));

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public Product getProductByID(String id) {

		String query = "select * from products where product_id = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5),
						rs.getString(6), rs.getString(7));

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
//	public static void main(String[] args) {
//		DAO dao= new DAO();
//		List<Product> list= dao.getAllProduct();
//	
//		for(Product o : list) {
//			System.out.print(o);
//		}
//	}

	public List<Product> getSearchProduct(String txtSearch) {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM products\r\n" + "  where product_name like ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5),
						rs.getString(6), rs.getString(7)));

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public Account getAccount(String user, String pass) {
		String sql = "  select * from Account where user_mail = ? and password = ?";
		try {
			conn = new DBContext().getConnection();

			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);

			rs = ps.executeQuery();

			if (rs.next()) {
				return new Account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	public void insertOrder(Orders d, Cart c) {
		// TODO Auto-generated method stub
		
		try {
			conn = new DBContext().getConnection();
			List<Product> pr=c.getItems();
			String sql="Insert into orders_detail values (?,?,?,null)";
			int id=0;
			if(rs.next()) {
				id=rs.getInt("order_id");
			}
			id= id+1;
			String sql2="Set identity_insert orders on insert into orders(user_mail,order_id,order_status,order_date,order_discount_code,order_address) values(?,?,?,?,?,?)"
					+"set identity_insert orders off";
			PreparedStatement	statement2=conn.prepareStatement(sql2);
			statement2.setString(1, d.getUserMail());
			statement2.setString(2, ""+id);
			statement2.setString(3, ""+d.getStatus());
			
			Date date=new Date(Calendar.getInstance().getTime().getTime());
			SimpleDateFormat f=new SimpleDateFormat("yyyy-mm-dd");
			String validDate=f.format(date);
			statement2.setDate(4, date);
			statement2.setString(5, d.getDiscount());
			statement2.setString(6, d.getAddress());
			statement2.executeUpdate();
			statement2.close();
			PreparedStatement statement=conn.prepareStatement(sql);
			for(Product p:pr) {
				statement.setString(1,"" + id);
				statement.setString(2,""+ p.getId());
				statement.setString(3, ""+1);
				statement.executeUpdate();
				
			}
			statement.close();

		}catch (Exception e) {
			// TODO: handle exception
		}
		
	}

//	public void addOder(Account acc) {
//	LocalDate curDate = java.time.LocalDate.now();
//	String date = curDate.toString();
//
//		try {
//			// add vào bảng oder
//			String sql = " insert into Orders values\r\n" + "  (?,?,?,?,?,?)";
//			conn = new DBContext().getConnection();
//			
//			ps = conn.prepareStatement(sql);
//			ps.setString(1, acc.getUrs());
//			ps.setString(1, acc.getPwd());
//			ps.setString(1, sql);
//			ps.setString(1, sql);
//			ps.setString(1, sql);
//			ps.setString(1, sql);
//			
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//	}
}
