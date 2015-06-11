package model.product;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

@Stateless(name="productFacade")
public class ProductFacade {

	@PersistenceContext(unitName="unit-siwProject")
	private EntityManager em;
	
	public Product createProduct(String name, String code, Float price, String description){
		Product product = new Product(name, code, price, description);
		this.em.persist(product);
		return product;
	}
	
	public Product getProduct(Long id) {
	    Product product = this.em.find(Product.class, id);
		return product;
	}
	
	public List<Product> getAllProducts() {
        CriteriaQuery<Product> cq = this.em.getCriteriaBuilder().createQuery(Product.class);
        cq.select(cq.from(Product.class));
        List<Product> products = this.em.createQuery(cq).getResultList();
		return products;
	}

	public void updateProduct(Product product) {
		this.em.merge(product);
	}
	
    private void removeProduct(Product product) {
    	this.em.remove(product);
    }

	public void removeProduct(Long id) {
        Product product = this.em.find(Product.class, id);
        removeProduct(product);
	}
	
}