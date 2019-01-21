package jgwk.blog.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import jgwk.blog.entity.User;

public interface UserRepo extends JpaRepository<User, Integer> {

}
