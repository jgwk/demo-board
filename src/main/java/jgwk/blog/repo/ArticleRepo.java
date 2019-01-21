package jgwk.blog.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import jgwk.blog.entity.Article;

public interface ArticleRepo extends JpaRepository<Article, Integer> {

}
