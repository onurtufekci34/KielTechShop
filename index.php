<?php
require_once('db.php');




?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="index_styles.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Trirong"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Sofia&effect=fire"
    />
    <title>KielTechShop</title>
  </head>
  
  <body>

  <?php 
  
  $searchTerm = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';



if (!empty($searchTerm)) {
    

include "searchcard.php";


} else {
  
     include "nav.php"; 
   include "gross_card.php"; 
   include "carousel.php"; 
   
     include "footer.php"; 
}

  
  
  
  ?>

    

   


   
    
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"
    ></script>
    <script>
      // Initialize the carousel
      const carousel = new bootstrap.Carousel(
        document.querySelector("#carouselExample"),
        {
          interval: 2000, // Adjust the interval time here (e.g., 3000ms = 3 seconds)
          ride: "carousel", // Start sliding automatically on page load
        }
      );


      
    </script>
  </body>
  
</html>
