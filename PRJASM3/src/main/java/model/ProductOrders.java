package model;

public class ProductOrders {
	private int orderId;
	private int productId;
	private int amountProduct;
	private String nammProduct;
	public ProductOrders() {
		super();
	}
	public ProductOrders(int orderId, int productId, int amountProduct, String nammProduct) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.amountProduct = amountProduct;
		this.nammProduct = nammProduct;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getAmountProduct() {
		return amountProduct;
	}
	public void setAmountProduct(int amountProduct) {
		this.amountProduct = amountProduct;
	}
	public String getNammProduct() {
		return nammProduct;
	}
	public void setNammProduct(String nammProduct) {
		this.nammProduct = nammProduct;
	}
	
	

}
