package com.polaris.store.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.polaris.store.entity.Book;


public interface BookRepository extends JpaRepository<Book, Long>{
	
	Page<Book> findByGender(String gender, Pageable pageRequest);	
	
	@Query("SELECT t FROM Book t WHERE " +			
            "LOWER(t.title) LIKE LOWER(CONCAT('%',:searchTerm, '%')) OR " + 
            "LOWER(t.author) LIKE LOWER(CONCAT('%',:searchTerm, '%')) OR " +
            "LOWER(t.publisher) LIKE LOWER(CONCAT('%',:searchTerm, '%')) OR " +
            "LOWER(t.gender) LIKE LOWER(CONCAT('%',:searchTerm, '%')) OR " +
            "LOWER(t.isbn) LIKE LOWER(CONCAT('%',:searchTerm, '%')) OR " +
            "LOWER(t.country) LIKE LOWER(CONCAT('%',:searchTerm, '%') ) ")
    Page<Book> findBySearchterms(@Param("searchTerm") String searchTerm, Pageable pageRequest);
}
