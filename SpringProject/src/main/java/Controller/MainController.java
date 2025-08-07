package Controller;

import Dao.ProductDao;
import Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;



@Controller
public class MainController {
    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String home(Model model){
        List<Product> p = productDao.getAllProduct();
        model.addAttribute("product" , p);
        return "index";
    }
@RequestMapping("/addProduct")
    public  String addProduct(){
        return "addProduct";
    }

    // handle form
    @RequestMapping(path = "/saveProduct" , method = RequestMethod.POST)
    public RedirectView handleForm(@ModelAttribute Product product , HttpServletRequest request){
        System.out.println(product);

        productDao.createProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }
    //delete

     @RequestMapping("/delete/{id}")
    public RedirectView deleteProduct(@PathVariable("id")int id,HttpServletRequest request){
      this.productDao.deleteProduct(id);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }
    //update
    @RequestMapping("/update/{id}")
  public String updateForm(@PathVariable("id")int id , Model model){
        Product p = this.productDao.getProduct(id);
        model.addAttribute("product" , p);
        //System.out.println(p);

        return "updateProduct";
    }

}
