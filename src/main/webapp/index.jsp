<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
   body {font-family: Arial, Helvetica, sans-serif;
    background-image: url("https://www.mpscommunications.com/wp-content/uploads/2017/06/EmployeeBenefits-1.jpg");
    
}
body, html {
    height:100%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    margin: 0;
}

/* Full-width input fields */
input[type=text], input[type=text], input[type=text] {
    width: 28%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid rgba(233, 163, 135, 0.767);
    background-color: rgb(103, 237, 241);
    box-sizing: border-box;
    border-radius: 25px;
}

/* Set a style for all buttons */
button {
    background-color: rgb(164, 202, 202);
    /* box-align: center; */
    color: rgb(121, 140, 226);
    padding: 14px 20px;
    margin: 8px 0;
    border: double;
    cursor: pointer;
    width: 100%;
    text-align: center;
    border-radius: 20px;
}

button:hover {
    opacity: 1.0;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #e91e10;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    /* background-color: rgb(207, 144, 144); Fallback color */
    background-color: rgb(201, 115, 115); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #a572b9;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid rgb(230, 211, 211);
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: rgb(243, 161, 161);
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 5s;
    animation: animatezoom 5s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
       
    }
}
</style>
</head>
<body>

<center><h2>Click to Register</h2>
    <div class="imgcontainer">
            <!-- <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span> -->
            <!-- <img src="./images/employee.png" alt="Avatar" width="600" height="200"> -->
          </div>
    <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Register</button>
</center>

<div id="id01" class="modal">
  
  <form action="/UserController?action=saveorupdate" method="POST">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="http://paulmontelongo.com/wp-content/uploads/2008/04/employees.jpg" alt="Avatar" width="300" height="200">
    </div>

    <div class="container">
        <center><h2>Employee Login</h2></center>
    	<label for="id"><b>ID</b></label>
      <input type="text" placeholder="Enter Id" name="id" required>
      <label for="name"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="name" required>

      <label for="salary"><b>Salary</b></label>
      <input type="text" placeholder="Enter Salary" name="salary" required>
        
      <button type="submit">Submit</button>
    </div>
	<center>
   
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    
    </center>
  </form>
</div>

<script>
// Get the modal
//var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
//window.onclick = function(event) {
    //if (event.target == modal) {
       // modal.style.display = "none";
   // }
//}
</script>

</body>
</html>
