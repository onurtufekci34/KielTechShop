<?php
require_once('db.php');
error_reporting(E_ALL);
ini_set('display_errors', 1);


if (isset($_POST['add_to_cart'])) {
    $id_kunden = 1; // Kunden ID'si (z.B.,  1 wird gegeben)
    $id_produkt = $_POST['product_id']; // produkt ID
    $zahl = $_POST['zahl']; // wie viel gekauft hat
  
    // kontrolieren: gleiche kunden und Produkt 
    $check_duplicate_sql = "SELECT * FROM warenkorb WHERE id_kunden = '$id_kunden' AND id_produkt = '$id_produkt'";
    $duplicate_result = mysqli_query($conn, $check_duplicate_sql);
    
    if (mysqli_num_rows($duplicate_result) == 0) {
        // produkt hinzufügen
        $add_to_cart_sql = "INSERT INTO warenkorb (id_kunden, id_produkt, zahl) VALUES ('$id_kunden', '$id_produkt', '$zahl')";
        mysqli_query($conn, $add_to_cart_sql);
    } else {
        // schon produkt ist dort, dann zahl aufzusteigen
        $update_cart_sql = "UPDATE warenkorb SET zahl = zahl + '$zahl' WHERE id_kunden = '$id_kunden' AND id_produkt = '$id_produkt'";
        mysqli_query($conn, $update_cart_sql);
    }
  }

$sql = "SELECT * FROM alle_produkte WHERE unter_k_id = 2";
$result = mysqli_query($conn, $sql);

$products = array();

while ($row = mysqli_fetch_assoc($result)) {
    $products[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire" />
    <title>ATEO</title>
</head>
<body>
    <?php include "nav.php"; ?>

    <div class="container mt-4 mb-5">
        <div class="row">
            <?php foreach ($products as $product): ?>
                <div class="col-md-4">
                    <div class="card d-flex flex flex-column mb-4">
                        <div class="img-container">
                            <img src="imgs/lautsprecher/<?php echo $product['id_produkt']; ?>.png" class="card-img-top" alt="Product Image" />
                        </div>

                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title text-truncate"><?php echo $product['p_name']; ?></h5>
                            <p class="text-truncate"><?php echo $product['Beschreibung']; ?></p>
                            <form method="post" class="d-flex flex-column">
                               <input type="hidden" name="product_id" value="<?php echo $product['id_produkt']; ?>">
                                <input class="w-25 align-self-center fs-3 text-center" type="number" name="zahl" min="1" value="1"> 
                               <button type="submit" name="add_to_cart" class="btn btn-primary mt-2">add to cart</button>
                            </form>

                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <?php include "footer.php"; ?>
</body>
</html>
