<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Buyer Service
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="Views/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="">
    
      <div class="logo"><a href="" class="simple-text logo-normal">
          Gadget Badget
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          
          <li class="nav-item active ">
            <a class="nav-link" href="">
              <i class="material-icons">person</i>
              <p>Buyer Service</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="">
              <i class="material-icons">content_paste</i>
              <p>Researcher Service</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="">
              <i class="material-icons">library_books</i>
              <p>Funding Body Service</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="">
              <i class="material-icons">bubble_chart</i>
              <p>Product Service</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="">
              <i class="material-icons">location_ons</i>
              <p>Payment Service</p>
            </a>
          </li>
          
          
        </ul>
      </div>
    </div>
    <div class="main-panel">
     
     
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h3 class="card-title">Buyer Service Management</h3>
                 
                </div>
                <div class="card-body">
                  <form>
				  
				  
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="userName" class="bmd-label-floating">Username</label>
                          <input id="userName"  class="form-control">
                        </div>
                      </div>
					  
					   <div class="col-md-12" >
                        <div class="form-group" style="display: none">
                          <label for="id" class="bmd-label-floating">Id</label>
                          <input id="id"  class="form-control">
                        </div>
                      </div>
                   
					  
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="email" class="bmd-label-floating">Email address</label>
                          <input  class="form-control" id="email">
                        </div>
                      </div>
                    
					
					
                    
                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="password"  class="bmd-label-floating">Password</label>
                          <input  class="form-control" id="password">
                        </div>
                      </div>
					  
					 </div> 
                     
                    
                    
                    <button  class="btn btn-primary pull-right update">Update</button>
                    <button  class="btn btn-primary pull-right submit">Submit</button>
					
					
					
					
					
					
                    <div class="clearfix"></div>
                  </form>
				  
				  <div id="deleteLabel" class="alert alert-success hide" role="alert" style="display: none">
      Successfully deleted the item. 
      </div>
      <div id="insertLabel" class="alert alert-success hide" role="alert" style="display: none">
      Successfully inserted the item. 
      </div>
      <div id="updateLabel" class="alert alert-success hide" role="alert" style="display: none">
      Successfully updated the item. 
      </div>
      <div id="deleteLabelerror" class="alert alert-danger hide" role="alert" style="display: none">
      Error while deleting the item. 
      </div>
      <div id="insertLabelerror" class="alert alert-danger hide" role="alert" style="display: none">
      Error while inserting the item. 
      </div>
      <div id="updateLabelerror" class="alert alert-danger hide" role="alert" style="display: none">
      Error while updating the item. 
      </div>
	  <table class="table">
      <thead>
      <tr>
      <th scope="col">Id</th>
      <th scope="col">UserName</th>
       
      <th scope="col">Email</th>
      <th scope="col">Password</th>
     
      <th scope="col">Action</th>
      </tr>
      </thead>
      <tbody id="buyer_table">
      </tbody>
      </table>
                </div>
              </div>
            </div>
           
          </div>
        </div>
      </div>
      
    </div>
  </div>
  

  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
      <script
         src="https://code.jquery.com/jquery-3.6.0.js"
         integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
         crossorigin="anonymous"></script>
      <script src="Components/buyer.js"></script>
	
	
</body>

</html>