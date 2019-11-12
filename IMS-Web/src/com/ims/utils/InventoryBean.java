package com.ims.utils;

/**
 * @author Vartika
 *
 */
public class InventoryBean {
	
	/**
	 * product
	 */
	private String product;
	/**
	 * productId
	 */
	private String productId;
	/**
	 * model
	 */
	private String model;
	/**
	 * manufacturer
	 */
	private String manufacturer;
	/**
	 * typeCode
	 */
	private String typeCode;
	/**
	 * locationCode
	 */
	private String locationCode;
	/**
	 * msrp
	 */
	private Double msrp;
	/**
	 * unitCost
	 */
	private Double unitCost;
	/**
	 * discountRate
	 */
	private Double discountRate;
	/**
	 * quantity
	 */
	private Double quantity;
	

	/**
	 * @return the product
	 */
	public String getProduct() {
		return product;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(String product) {
		this.product = product;
	}

	/**
	 * @return the productId
	 */
	public String getProductId() {
		return productId;
	}

	/**
	 * @param productId the productId to set
	 */
	public void setProductId(String productId) {
		this.productId = productId;
	}

	/**
	 * @return the model
	 */
	public String getModel() {
		return model;
	}

	/**
	 * @param model the model to set
	 */
	public void setModel(String model) {
		this.model = model;
	}

	/**
	 * @return the typeCode
	 */
	public String getTypeCode() {
		return typeCode;
	}

	/**
	 * @param typeCode the typeCode to set
	 */
	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}

	/**
	 * @return the locationCode
	 */
	public String getLocationCode() {
		return locationCode;
	}

	/**
	 * @param locationCode the locationCode to set
	 */
	public void setLocationCode(String locationCode) {
		this.locationCode = locationCode;
	}

	/**
	 * @return the msrp
	 */
	public Double getMsrp() {
		return msrp;
	}

	/**
	 * @param msrp the msrp to set
	 */
	public void setMsrp(Double msrp) {
		this.msrp = msrp;
	}

	/**
	 * @return the unitCost
	 */
	public Double getUnitCost() {
		return unitCost;
	}

	/**
	 * @param unitCost the unitCost to set
	 */
	public void setUnitCost(Double unitCost) {
		this.unitCost = unitCost;
	}

	/**
	 * @return the discountRate
	 */
	public Double getDiscountRate() {
		return discountRate;
	}

	/**
	 * @param discountRate the discountRate to set
	 */
	public void setDiscountRate(Double discountRate) {
		this.discountRate = discountRate;
	}

	/**
	 * @return the quantity
	 */
	public Double getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(Double quantity) {
		this.quantity = quantity;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	/**
	 * InventoryBean
	 * @param product
	 * @param id
	 * @param model
	 * @param manuf
	 * @param typeCode
	 * @param locationCode
	 * @param msrp
	 * @param unitCost
	 * @param discountRate
	 * @param qty
	 */
	public InventoryBean (String product, String id, String model, String manuf, String typeCode, String locationCode, Double msrp, Double unitCost, Double discountRate, Double qty) {
		this.productId = id;
		this.product=product;
		this.discountRate=discountRate;
		this.model = model;
		this.manufacturer=manuf;
		this.locationCode=locationCode;
		this.msrp=msrp;
		this.unitCost=unitCost;
		this.typeCode = typeCode;
		this.quantity=qty;
		}
	
}