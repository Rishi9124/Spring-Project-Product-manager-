package Dao;

import Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//@Component
@Repository
public class ProductDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;
@Transactional
    public void createProduct(Product product){

        this.hibernateTemplate.saveOrUpdate(product);

    }

    // get alla poroduct

    public List<Product> getAllProduct(){

    List<Product> products = this.hibernateTemplate.loadAll(Product.class);
    return products;

    }
    @Transactional
 public void deleteProduct(int pid){
    Product p = hibernateTemplate.load(Product.class , pid);
    this.hibernateTemplate.delete(p);
 }

 public Product getProduct(int pid){

   return this.hibernateTemplate.get(Product.class ,pid  );
 }
}
