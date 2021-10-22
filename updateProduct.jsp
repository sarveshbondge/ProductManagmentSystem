<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
  <br/>
  <center>
    <h1>PRODUCT MANAGMENT SYSTEM</h1>
    <br/>
    <h2>Update Product Details...</h2>
  </center>
    <br/>
    <br/>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  

<div class="container mt-6">

		<div class="row">

			<div class="col-md-5 offset-md-3">

<form action="update" method="Post">

<div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Product Id</label>
    <div class="col-sm-10">
      <input type="Product Id"   value="${Product.getId()}" class="form-control" id="inputEmail3" name="id" placeholder="Product Id">
    </div>
  </div>

  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Product Name</label>
    <div class="col-sm-10">
      <input type="Product Name" value="${Product.getName()}" class="form-control" id="inputEmail3" name="name"  placeholder="Product Name">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Description</label>
    <div class="col-sm-10">
      <input type="Description" value="${Product.getDescription()}" class="form-control" id="inputPassword3"  name="description" placeholder="Product Description">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">Price</label>
    <div class="col-sm-10">
      <input type="Price" value="${Product.getPrice()}" class="form-control" id="inputPassword3"  name="price" placeholder="Price">
    </div>
  </div>


<center>
<div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary">ADD</button>
    </div>
  </div>
  </center>
</form>
 </div>

		</div>

	</div>



</body>



</html>