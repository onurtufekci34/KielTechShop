
<!-- Footer -->
<footer class="footer d-flex mt-5 pt-2">
  <div class="container">
  <p class="word">Created by <span class="font-effect-fire">KielTechShop</span> © <?php echo date("Y"); ?></p>
   </div>
      <!-- Right -->
      
      
      <div class="me-5">
        

        <a href="https://www.linkedin.com/in/onurt%C3%BCfekci/" class="text fs-4 ">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="https://github.com/onurtufekci34" class="text fs-5 ms-3">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->

      
</footer>

<?php
    if(isset($conn)){
        mysqli_close($conn);
    }



?>