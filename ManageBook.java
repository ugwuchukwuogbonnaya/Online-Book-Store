package com.polaris.store.rest;

import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.polaris.store.dao.BookRepository;
import com.polaris.store.entity.Book;


@RestController
@RequestMapping("api")
public class ManageBook {

	@Autowired
	private BookRepository bookRepository;
	
	Page<Book> books;
	
	Map hashMap = new HashMap();
	
	@PostMapping("addBook")		
	public String addBook(@ModelAttribute Book book, BindingResult result) {
		String ret = "";
		if(result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			ret = errors.get(0).getDefaultMessage();
		}
		else {
			try {
				bookRepository.save(book);
			ret = "ok";
			}catch(Exception ex) { ret = "Book details could not be saved at this time"; }
		}		
		return ret;		
	}
	
	@PutMapping("updateBook")		
	public String updateBook(@ModelAttribute Book book, BindingResult result) {
		String ret = "";
		if(result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			ret = errors.get(0).getDefaultMessage();
		}
		else {
			try {
				bookRepository.save(book);
			ret = "ok";
			}catch(Exception ex) { ret = "Book details could not be saved at this time"; }
		}		
		return ret;		
	}
	
	@GetMapping("books")
	public String getBooks(@RequestParam("page") int page, @RequestParam("limit") int limit, @RequestParam("gender") String gender, @RequestParam("keywords") String keywords, HttpServletRequest request){
		String results = ""; 
		if(limit == 0) {
			limit = 100;
		}
		
		int page2 = page/limit;
		Pageable pageable = PageRequest.of(page2, limit, Sort.by("id").descending());

		if(!keywords.equals("") && gender.equals("")) {
			books = bookRepository.findBySearchterms(keywords, pageable);
		}
		else if(keywords.equals("") && !gender.equals("")) {
			books = bookRepository.findByGender(gender, pageable);
		}
		else {	
			books = bookRepository.findAll(pageable);
		}
		
		if(!books.isEmpty()) {
			int count = page;		
			results += "<table class='table table-striped table-hover' style='font-size:13px; color: #003057;'><thead><tr>"
					+ "<th>SN</th><th>TITLE</th><th>AUTHOR</th><th>PUBLISHER</th><th></th></tr></thead>";		
			for(Book t: books){ 
				count++;		
				
			results += "<tr><td>"+count+"</td><td>"+t.getTitle()+"</td><td>"+t.getAuthor()+"</td><td>"+t.getPublisher()+"</td><td><a class='btn btn-primary' href='javascript:void(0);' onclick=\"+ viewdetail('"+t.getId()+"')\">View</a>"
					+ "&nbsp;&nbsp;<a title='Edit App' href='javascript:void(0);' class='btn btn-light' onclick=\" editdetail('"+t.getId()+"')\"> Edit</a>"
					+ "&nbsp;&nbsp;<a title='Delete App' href='javascript:void(0);' class='btn btn-danger' onclick=\" userAction('delete','"+t.getId()+"')\">Delete</a></td></tr>"; 
			
			}
			results += "</table>";			 
			hashMap.put("totalRows", books.getTotalElements());
	        hashMap.put("perPage", limit);
	        hashMap.put("filter", "searchFilter");       
	        hashMap.put("currentPage", page);   
	        Pagination pagination = new Pagination(hashMap);
			results += pagination.paginate();			
			}
			else {
				results += "<center><h2> Data not available </h2></center>";
			}	
		
		return results;
	}
	
	
	@GetMapping("viewdetail/{id}")	
	public String findById(@PathVariable long id, HttpServletRequest request) {
		Optional<Book> result = bookRepository.findById(id);
		Book detail = null;
		String res = "";
		
		if(result.isPresent()) {
			detail = result.get();			
			
			res	+= "<table class='table table-hover'>";			
			res += "<thead><th>TITLE</th><th>AUTHOR</th></thead>";
			res	+= "<tr><td>"+detail.getTitle()+"</td><td>"+detail.getAuthor()+"</td></tr>";
			res += "<thead><th>ISBN</th><th>PUBLISHER</th></thead>";
			res	+= "<tr><td>"+detail.getIsbn()+"</td><td>"+detail.getPublisher()+"</td></tr>";
			res += "<thead><th>COUNTRY</th><th>GENDER</th></thead>";
			res	+= "<tr><td>"+detail.getCountry()+"</td><td>"+detail.getGender()+"</td></tr>";
			res	+= "</table>";	
		}
		
		return res;
	}
	
	@GetMapping("editdetail/{id}")	
	public Book findByIdEdit(@PathVariable long id) {
		Optional<Book> result = bookRepository.findById(id);
		Book detail = null;
		
		if(result.isPresent()) {
			detail = result.get();
		}
		
		return detail;
	}
	
	@DeleteMapping("deleteBook/{id}")	
	public String deleteDetail(@PathVariable long id) {
		bookRepository.deleteById(id);
		
		return "ok";
	}
}
