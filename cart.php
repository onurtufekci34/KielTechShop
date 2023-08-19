<?php
require_once('db.php');

$id_kunden = 1; // kunden id z.B 1

// Fonktion: unter_k_id = namen 
function getProductName($unter_k_id) {
    switch ($unter_k_id) {
        case 1: return 'Drucker';
        case 2: return 'Lautsprecher';
        case 3: return 'Monitor';
        case 4: return 'Grafikkarte';
        case 5: return 'Festplate';
        case 6: return 'Arbeitspeicher';
        case 7: return 'Kabel';
        case 8: return 'Ladegerate';
        case 9: return 'Batterien';
        default: return 'Unknown Product';
    }
}


// Remove funktion
if (isset($_GET['remove'])) {
  $removeProductId = $_GET['remove'];
  $removeSql = "DELETE FROM warenkorb WHERE id_produkt = '$removeProductId' AND id_kunden = '$id_kunden'";
  mysqli_query($conn, $removeSql);
  header("Location: cart.php"); 
  exit();
}


// senken
if (isset($_GET['increase'])) {
  $increaseProductId = $_GET['increase'];
  $increaseSql = "UPDATE warenkorb SET zahl = zahl + 1 WHERE id_produkt = '$increaseProductId' AND id_kunden = '$id_kunden'";
  mysqli_query($conn, $increaseSql);
  header("Location: cart.php");
  exit();
}

// steigen
if (isset($_GET['decrease'])) {
  $decreaseProductId = $_GET['decrease'];
  $decreaseSql = "UPDATE warenkorb SET zahl = IF(zahl > 1, zahl - 1, zahl) WHERE id_produkt = '$decreaseProductId' AND id_kunden = '$id_kunden'";
  mysqli_query($conn, $decreaseSql);
  header("Location: cart.php");
  exit();
}





$totalPrice = 0; // für den Totalpreis

// kunden warenkorb produkte
$sql = "SELECT warenkorb.*, alle_produkte.* FROM warenkorb
        JOIN alle_produkte ON warenkorb.id_produkt = alle_produkte.id_produkt
        WHERE warenkorb.id_kunden = '$id_kunden'";
$warenkorb = mysqli_query($conn, $sql);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="cart.css" />
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
    <title>ATEO</title>
  </head>
  <body>
    <!-- Nav -->
    <?php include "nav.php"; ?>
   
    <div class="container-fluid mt-5 p-5">
      <div class="row">
        <aside class="col-lg-9">
          <div class="card">
            <div class="table-responsive">
              <table class="table table-borderless table-shopping-cart">
                <thead class="text-muted">
                  <tr class="small text-uppercase">
                    <th scope="col">Product</th>
                    <th scope="col" class="ps-4" width="120">Zahl</th>
                    <th scope="col" width="120">Preis</th>
                    <th scope="col" width="120">Menge Preis</th>
                    <th
                      scope="col"
                      class="text-right d-none d-md-block"
                      width="200"
                    ></th>
                  </tr>
                </thead>
                <tbody>
                                <?php foreach ($warenkorb as $cartItem): ?>
                                    <tr>
                                        <td>
                                            <figure class="itemside align-items-center">
                                                <div class="aside">
                                                    <img src="imgs/<?php echo strtolower(getProductName($cartItem['unter_k_id'])); ?>/<?php echo $cartItem['id_produkt']; ?>.png" class="img-sm w-25" />
                                                </div>
                                                <figcaption class="info">
                                                    <p  class="title text-dark" data-abc="true"><?php echo $cartItem['p_name']; ?></p>
                                                    
                                                </figcaption>
                                            </figure>
                                        </td>
                                        <td>
                                        <div class="price-wrap">
                                                <!-- senken -->
                                                <a href="cart.php?decrease=<?php echo $cartItem['id_produkt']; ?>" class="btn btn-light btn-sm text-danger " style="font-size: 2rem;">-</a>
                                                <var class="price h5"><?php echo $cartItem['zahl']; ?></var>
                                                <!-- steigen -->
                                                <a href="cart.php?increase=<?php echo $cartItem['id_produkt']; ?>" class="btn btn-light btn-sm text-primary" style="font-size: 2rem;">+</a>
                                        </div>
                                        </td>
                                        <td>
                                            <div class="price-wrap">
                                                <var class="price " style="font-size: 1.5rem;">€<?php echo $cartItem['preis']; ?></var>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="price-wrap">
                                                <var class="price " style="font-size: 1.5rem;">€<?php echo ($cartItem['preis'] * $cartItem['zahl']); ?></var>
                                            </div>
                                        </td>
                                        <td class="text-right d-none d-md-block">
                                <a href="cart.php?remove=<?php echo $cartItem['id_produkt']; ?>" class="btn btn-light" data-abc="true">Remove</a>
                            </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
              </table>
            </div>
          </div>
        </aside>
        <aside class="col-lg-3">
        <div class="card">
        <div class="card-body d-flex flex-column">
          <dl class="dlist-align">
            <dt class="h4">Gesamter Preis:</dt>
            <dd class="text-right ml-3 h3 text-success">
              <?php
              foreach ($warenkorb as $cartItem) {
                  $totalPrice += ($cartItem['preis'] * $cartItem['zahl']);
              }
              echo '€' . number_format($totalPrice, 2); 
              ?>
            </dd>
          </dl>
              <hr />
              <a
              href="bestellt.php?action=buy"
                class="btn btn-out btn-primary btn-square btn-main mb-2"
                data-abc="true"
              >
                Kaufen
              </a>
              <a
                href="index.php"
                class="btn btn-out btn-success btn-square btn-main"
                data-abc="true"
                >Einkaufen fortfahren</a
              >
            </div>
          </div>
        </aside>
      </div>
    </div>

    <!-- Footer -->
    <?php include "footer.php"; ?>
  </body>
</html>
