<!DOCTYPE html>
<html lang="en">

<head>
<!-- Meta tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Drift - A fully responsive, HTML5 based admin template">
<meta name="keywords" content="Responsive, HTML5, admin theme, business, professional, jQuery, web design, CSS3, sass">
<!-- /meta tags -->
<title> Polaris - Book store</title>
  	
<!-- Font Icon Styles -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/fonts/noir-pro/styles.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/plugins/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/vendor/gaxon-icon/styles.css">

<!-- Perfect Scrollbar stylesheet -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css">
<!-- /perfect scrollbar stylesheet -->

<link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/saas/theme.min.css">

<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/assets/css/pagination.css">  

</head>
<body class="dt-layout--saas" style=" overflow: scroll;">
          
    <!-- /loader -->
    <!-- Root -->
    <div class="dt-root">
        <div class="dt-root__inner">
            <!-- Header -->
        <header class="dt-header">


            <!-- Header Bottom -->
            <div class="dt-header__bottom d-none d-md-block">

                <!-- Custom Container -->
                <div class="dt-container">

                    <!-- Navbar -->
                    <ul class="navbar-nav navbar-expand-md dt-navbar">
                        <!-- Nav Item -->
                        <li class="nav-item nav-link">                            
                                <span class="nav-text" style="color:white">BOOK STORE</span>                            
                        </li>
                        <!-- /nav item -->
                    </ul>
                    <!-- /navbar -->

                    <!-- Header Toolbar -->
                    <div class="dt-header__toolbar d-none d-lg-flex">

                        <!-- Header Menu Wrapper -->
                        <div class="dt-nav-wrapper">

                            <a type="button" href="javascript:void(0);" class="fe fe-plus btn btn-primary" id="addLink" onclick="javascript:$('#addUser').slideToggle();" class="btn btn-sec btn-sm ml-auto align-self-center">
                                <i class="fa fa-plus mr-1 d-none d-xl-inline-block"></i>
                                <span>Enter New Book</span> </a>
                        </div>
                        <!-- /header menu wrapper -->

                    </div>
                    <!-- /header toolbar -->

                </div>
                <!-- /custom container -->

            </div>
            <!-- /header bottom -->

        </header>
        <!-- /header -->
            <!-- Site Main -->
            <div class="dt-main">

                <!-- Custom Container -->
                <div class="dt-container">

                    <!-- Site Content Wrapper -->
                    <div class="dt-content-wrapper">

                        <!-- Site Content -->
                        <div class="dt-content">
                

                        <!-- Grid -->
                        <div class="row mb-sm-8">

                            
                        </div>
                        <!-- /grid -->
                        
                        
                     <div class="panel-body formData" id="addUser" style="display:none;font-size:12px">
                <h4 id="actionLabel">Create Book</h4>
                <form class="form" id="addForm">                  	                  
                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                        <label>Title</label>
                        <input type="text" class="form-control" name="title" id="title"/>
                    </div>         
                    <div class="form-group col-md-6 col-sm-12 col-xs-12">
                        <label>Author</label>
                        <input type="text" class="form-control" name="author" id="author"/>
                    </div> 
                     <div class="form-group col-md-6 col-sm-12 col-xs-12">
                        <label>ISBN</label> 
                        <input type="text" class="form-control" name="isbn" id="isbn"/>
                    </div>   
                    <div class="form-group col-md-6 col-sm-12 col-xs-12">
                        <label>Publisher</label>
                        <input type="text" class="form-control" name="publisher" id="publisher"/>
                    </div> 
                    <div class="form-group col-md-6 col-sm-12 col-xs-12">
                        <label>Country</label>
                        <input type="text" class="form-control" name="country" id="country"/>
                    </div> 
                    <select class="form-group col-md-5 col-sm-12 col-xs-12 form-control" name="gender" id="gender2">                          
                                 <option value="Male">Male</option>
                                 <option value="Female">Female</option>
                     </select>
                               
                     <div class="form-group col-md-8 col-sm-6 col-xs-12">                             
                    <a href="javascript:void(0);" class="btn btn-warning" onclick="$('#addUser').slideUp();">Cancel</a>
                    <a href="javascript:void(0);" class="btn btn-primary" onclick="userAction('add')">Save</a>                    
                	</div>
                </form>
            </div>
        <div class="panel-body formData" id="editForm" style="display:none">
                <h3 id="actionLabel">Edit Book </h3>
                <form class="form" id="userForm">      
                    
					<div class="form-group col-md-6 col-sm-6 col-xs-12">
                        <label>Title</label>
                        <input type="hidden" name="id" id="idEdit"/>
                        <input type="text" class="form-control" name="title" id="titleEdit"/>
                    </div>         
                    <div class="form-group col-md-6 col-sm-12 col-xs-12">
                        <label>Author</label>
                        <input type="text" class="form-control" name="author" id="authorEdit"/>
                    </div> 
                     <div class="form-group col-md-6 col-sm-12 col-xs-12">
                        <label>ISBN</label> 
                        <input type="text" class="form-control" name="isbn" id="isbnEdit"/>
                    </div>   
                    <div class="form-group col-md-6 col-sm-12 col-xs-12">
                        <label>Publisher</label>
                        <input type="text" class="form-control" name="publisher" id="publisherEdit"/>
                    </div> 
                    <div class="form-group col-md-6 col-sm-12 col-xs-12">
                        <label>Country</label>
                        <input type="text" class="form-control" name="country" id="countryEdit"/>
                    </div> 
                    <select class="form-group col-md-5 col-sm-12 col-xs-12 form-control" name="gender" id="genderEdit">                          
                                 <option value="Male">Male</option>
                                 <option value="Female">Female</option>
                     </select>                        
                    <div class="form-group col-md-8 col-sm-6 col-xs-12">
                    <a href="javascript:void(0);" class="btn btn-warning" onclick="$('#editForm').slideUp();">Cancel</a>
                    <a href="javascript:void(0);" class="btn btn-success" onclick="userAction('edit')">Update </a>
               		</div>
                </form>
            </div>   
                        
               
                                                 <!-- Grid Item -->
                        <div class="col-xl-12">

                            <!-- Card -->
                            <div class="dt-card">
							<div class="row" style="margin-top:30px">
							<div class="col-md-1">Filter by:</div>
							<select id="showLimit" class="form-control col-md-1" onchange="searchFilter()">
						        <option value="10">10</option>
						        <option value="15">15</option>
						        <option value="20">20</option>
						        <option value="10">All</option>
						    </select>
							
							 <select class="form-control col-md-2" onchange="searchFilter()" id="gender" style="margin-left:20px">
                                 <option value="">Gender</option>
                                 <option value="Male">Male</option>
                                 <option value="Female">Female</option>
                             </select>                            
                             <div class="input-group col-md-5 col-sm-6 col-xs-12 pull-right" style="float:right; margin-left:50px">
	      <input id="keywords" name="keywords" type="text" class="form-control" placeholder="Search for..." onkeyup="searchFilter()">
	    </div>  
	    <span class="loading-overlay" style="display:none"><img src="<%= request.getContextPath() %>/assets/icon/btn-ajax-loader.gif" height="18" width="18" /></span>             
                             
                             </div>
                                <!-- Card Body -->
                                <div class="dt-card__body">
									 <div class="table-responsive" id="posts_content" style="margin-top:-40px">
									 
									 </div>
                                   
                                </div>
                                <!-- /card body -->

                            </div>
                            <!-- /card -->

                        </div>
                        <!-- /grid item -->
                        </div>
                        <!-- /grid --> 
                      </div>

                    </div>
                    <!-- /site content wrapper -->

                </div>
                <!-- /custom Container -->

  
                <!-- New View Modal -->
                <div class="modal fade" id="view-modal" tabindex="-1" role="dialog"
                     aria-labelledby="model-1"
                     aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">

                        <!-- Modal Content -->
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h3 class="modal-title" id="model-1">Book Details</h3>
                                <button type="button" class="close" data-dismiss="modal"
                                        aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <!-- /modal header -->

                            <div class="modal-body" id="book_detail" style="margin-top:-30px">
                                               <!-- Form -->
                                 
                            </div>

                            <!-- Modal Footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-py btn-sm"
                                        data-dismiss="modal">Close
                                </button>
                            </div>
                            <!-- /modal footer -->

                        </div>
                        <!-- /modal content -->

                    </div>
                </div>
            <!-- / New View modal -->                         

            <!-- Footer -->
            <footer class="dt-footer">
                <div class="dt-container">
                     © <script type="text/javascript">document.write(new Date().getFullYear()); </script> Polaris Digitech
                </div>  
            </footer>
            <!-- /footer -->                    
        </div>
    </div>
    <!-- /root -->

<script src="<%= request.getContextPath() %>/assets/plugins/jquery/js/jquery.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/plugins/moment/js/moment.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Perfect Scrollbar jQuery -->
<script src="<%= request.getContextPath() %>/assets/plugins/perfect-scrollbar/js/perfect-scrollbar.min.js"></script>


<script>
 var base_url = '<%= request.getContextPath() %>';	
 </script>

<script>
$(document).ready( function () { 
	 searchFilter();   	 
} );
</script>
<script>

function userAction(type,id){	
	
	 if (confirm("Click OK to Continue or Cancel to ignore") === true) {    
	    //id = (typeof id == "undefined")?'':id;
	    var statusArr = {add:"added", edit:"updated", delete:"deleted"};
	    var userData = '';
	    var url = '';   
	    var method = '';  
	    if (type === 'add'){ 
	    	var title = $("#title").val();	var author = $("#author").val();	var isbn = $("#isbn").val();
	    	var publisher = $("#publisher").val();	var country = $("#country").val();	var gender = $("#gender2").val(); 
	    	 if(title.length < 2 ){ alert("title cannot be empty"); $('input[name=title]').focus(); return false; }
	   	  else if(author.length < 2 ){ alert("author cannot be empty"); $('input[name=author]').focus(); return false; }
	   	else if(isbn.length < 2 ){ alert("isbn cannot be empty"); $('input[name=isbn]').focus(); return false; }
	   	else if(publisher.length < 2 ){ alert("publisher cannot be empty"); $('input[name=publisher]').focus(); return false; }
	   	else if(country.length < 2 ){ alert("country cannot be empty"); $('input[name=country]').focus(); return false; }
	   	else if(gender.length < 2 ){ alert("gender cannot be empty"); $('input[name=gender]').focus(); return false; }
	 	   	  	  			            
	        userData = $("#addUser").find('.form').serialize(); 
	        url = base_url+'/api/addBook';
	        method = 'POST';
	    }
	    else if (type === 'edit'){			           	      
	        userData = $("#editForm").find('.form').serialize();
	        url = base_url+'/api/updateBook';  
	        method = 'PUT';      
	    }else{
	    	url = base_url+'/api/deleteBook/'+id;
	        userData = 'id='+id;
	        method = 'DELETE';
	    }    
	      
	    $.ajax({
	        type: method,
	        url: url,
	        data: userData,
	        beforeSend: function () { 
	            $('.loading-overlay').show();
	        },
	        success:function(msg){
	        if($.trim(msg) === "ok"){
	                alert('Book '+statusArr[type]+' successfully.'); 
	                var allcookies = document.cookie;              
	                var cookiearray = allcookies.split(';'); 
	                var value = 0;
	                value = cookiearray[0].split('=')[1];                
	                value = parseInt(value);
	                searchFilter(value);                
	               $('.form')[0].reset();
	               $('.formData').slideUp();                
	                //setTimeout(' window.location.href = "users.php"; ',400);             
	        }                  
	        else{
	                //setTimeout(' window.location.href = "users.php"; ',400);  
	                alert(msg);
	            }
	        $('.loading-overlay').fadeOut("slow");      
	        
	        }
	    });
	    }
	}


function viewdetail(id){     	
    $.ajax({
        type: 'GET',	        
        url: base_url+'/api/viewdetail/'+id,
        data: 'id='+id,
        beforeSend: function () { 
            $('.loading-overlay').show();
        },
        success:function(data){         	
        	$('#book_detail').html(data);
            $('#view-modal').modal({backdrop: true});           
            $('.loading-overlay').fadeOut("slow");              
        }
    });
}  


function editdetail(id){     	
    $.ajax({
        type: 'GET',	        
        url: base_url+'/api/editdetail/'+id,
        data: 'id='+id,
        beforeSend: function () { 
            $('.loading-overlay').show();
        },
        success:function(data){    
        	$('#idEdit').val(data.id);    	
        	$('#titleEdit').val(data.title);
        	$('#authorEdit').val(data.author);     
        	$('#publisherEdit').val(data.publisher);  
        	$('#isbnEdit').val(data.isbn);  
        	$('#countryEdit').val(data.country);  
        	$("#genderEdit option[value='"+data.gender+"']").prop("selected", "selected");        	

        	 $('#editForm').slideDown();
	         $('.loading-overlay').fadeOut("slow");          
        }
    });
}  

function searchFilter(page_num) { 
    page_num = page_num?page_num:0;
    document.cookie = "current_page=" +page_num;
    var keywords = $('#keywords').val();      
    var showLimit = $('#showLimit').val();  
    var gender = $('#gender').val(); 
   

    $.ajax({
        type: 'GET',            
        url: base_url+'/api/books',
        data:'page='+page_num+'&limit='+showLimit+'&keywords='+keywords+'&gender='+gender,
        beforeSend: function () { 
            $('.loading-overlay').show();
        },
        success: function (data) {           	
            $('#posts_content').html(data);
            $('.loading-overlay').fadeOut("slow");            	
        }
    });
}    


</script>
</body>

</html>