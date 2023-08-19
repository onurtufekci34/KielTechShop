<?php
    require_once('db.php');

    // kategorien kommt
    $kategorienSql = "SELECT * FROM kategorien";
    $kategorienResult = mysqli_query($conn, $kategorienSql);
    
    $id_kunden = 1; // Müşteri ID'si, örneğin 1
    $warenkorbSql = "SELECT SUM(zahl) AS total FROM warenkorb WHERE id_kunden = '$id_kunden'";
    $warenkorbResult = mysqli_query($conn, $warenkorbSql);
    $warenkorbCount = mysqli_fetch_assoc($warenkorbResult)['total'];
?>
<!-- Nav -->
<div class="nav_container">
      <nav id="nav" class="navbar navbar-expand-md bg-body-tertiary fixed-top">
        <div class="container-fluid">
          <a id="navbarbrand" class="navbar-brand" href="index.php"
            ><img id="logo" src="imgs/logo.png" alt=""
          /></a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <h1 id="ateo" class="font-effect-fire">KielTechShop</h1>

          <div class="nav justify-content-end" id="navbarSupportedContent">
            <ul id="navbarul" class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a
                  id="home"
                  class="nav-link"
                  aria-current="page"
                  href="index.php"
                  ><i class="fa-solid fa-house"></i
                ></a>
              </li>
              <li class="nav-item">
                <a id="Konto" class="nav-link" href="konto.php"
                  ><i class="fa-solid fa-user"></i
                ></a>
              </li>

              <li class="nav-item">
        <a id="Warenkorb" class="nav-link" href="cart.php">
            <i class="fa-solid fa-cart-shopping"></i>
            <span class="ms-1 text-success"><?php echo $warenkorbCount; ?></span>
        </a>
    </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>

    <!-- Search Menü -->
    <?php include "search.php"; ?>

    <!-- Dropdown Menü -->
<div id="container_dropdown" class="container_dropdown d-flex justify-content-center">
    <?php foreach ($kategorienResult as $kategorie): ?>
        <div class="dropdown-center">
            <button id="drpdwnbtn" class="btn btn-primary drpdwnbtn" aria-expanded="false">
                <?php echo $kategorie['kategorien']; ?>
            </button>
            <ul class="dropdown-menu dropdown-menu-dark">
                <?php
                    // unterkategorien kommt
                    $altKategorienSql = "SELECT * FROM unterkategorien WHERE kategorien_id_kategorien = {$kategorie['id_kategorien']}";
                    $altKategorienResult = mysqli_query($conn, $altKategorienSql);
                    
                    foreach ($altKategorienResult as $altKategorie):
                ?>
                <li>
                    <a class="dropdown-item" href="<?php echo strtolower($altKategorie['untergategorien']); ?>.php">
                        <?php echo $altKategorie['untergategorien']; ?>
                    </a>
                </li>
                <?php endforeach; ?>
            </ul>
        </div>
    <?php endforeach; ?>
</div>





