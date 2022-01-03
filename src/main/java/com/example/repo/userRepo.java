package com.example.repo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.UserModel;


@Repository
public interface userRepo extends CrudRepository<UserModel, Integer> {	
	@Query("SELECT u from UserModel u where u.name like %:searchUser%")
	public List<UserModel> Search(String searchUser) ;

}
