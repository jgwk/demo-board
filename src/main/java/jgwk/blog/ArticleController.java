package jgwk.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jgwk.blog.entity.Article;
import jgwk.blog.repo.ArticleRepo;

@Controller
@RequestMapping("/article")
public class ArticleController {
	
	@Autowired
	private ArticleRepo articleR;	
	
	@RequestMapping("/list")
	public String list(Model model) {
		List<Article> article = articleR.findAll();
		model.addAttribute("article", article);
		
		return "article/list";
	}
	
	@GetMapping("/add")
	public String add() {
		return "article/add";
	}
	
	@PostMapping("/add")
	public String add(Article article) {
		articleR.save(article);
		
		return "article/add";
	}
	
	@GetMapping("/add/{id}")
	public String article(@PathVariable("id") int id) {
		articleR.findById(id);
		
		return "article/read";
	}
	
	
}
