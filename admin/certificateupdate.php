<script>
<?php

require 'asset/admindb.php';




if($_SERVER["REQUEST_METHOD"]=="POST"){

 
  $aadhar=$_POST["aadhar"];

  $sql = "UPDATE ragistration SET status = 1 WHERE aadhar = $aadhar";
  $result = mysqli_query($con, $sql);
  $num = mysqli_num_rows($result);
}


?>
</script>


<!DOCTYPE html>
<html>
  <head>
    <title>Certificate Validation</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <!-- <style> -->
      <!-- <link rel="stylesheet" href="css/form.css"> -->
      <link rel="stylesheet" href="../css/form.css">
  </head>




<body>
    <div class="testbox">
      <form action="certificateupdate.php" method="post">
        <div class="banner">
          <!-- <img src="yaa.jpg" height="100%" width="100%"> -->
          <h1>Certificate Validation</h1>
        </div>
        <div class="colums">
          <div class="item">
            <label for="fname">Enter Aadhar Number<span>*</span></label>
            <input id="aadhar" type="number" name="aadhar"  required/>
          </div>
            <!-- <a href="" target= "blank">Submit</a> -->
            <button type="submit" href="">Submit</button>

        </div>
        </div>
      </form>
    </div>
  </body>
</html>
