<?php
require_once('db.php');

$id_kunden = 1; // Kunden ID, z.B. 1

// Kunden warenkorb produkt
$sql = "SELECT warenkorb.*, alle_produkte.* FROM warenkorb
        JOIN alle_produkte ON warenkorb.id_produkt = alle_produkte.id_produkt
        WHERE warenkorb.id_kunden = '$id_kunden'";
$warenkorb = mysqli_query($conn, $sql);


// alle produkte hinzufügen bestellung tabele datenbank
foreach ($warenkorb as $cartItem) {
    $id_produkt = $cartItem['id_produkt'];
    $id_kunden = $cartItem['id_kunden'];
    $zahl = $cartItem['zahl'];
    $gesamte_preis = $cartItem['zahl'] * $cartItem['preis'];
    $id_warenkorb = $cartItem['id_warenkorb'];

    $insertSql = "INSERT INTO bestellung (id_produkt, id_kunden, datum, zahl, gesamte_preis, id_warenkorb)
                  VALUES ('$id_produkt', '$id_kunden', NOW(), '$zahl', '$gesamte_preis','$id_warenkorb')";
    mysqli_query($conn, $insertSql);
}


// warenkorb zu leeren
$emptyCartSql = "DELETE FROM warenkorb WHERE id_kunden = '$id_kunden'";
mysqli_query($conn, $emptyCartSql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="index_styles.css"/>
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
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Kanit:ital,wght@1,200&display=swap"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Sofia&effect=fire"
    />
    <title>ATEO</title>
</head>

<body>
<?php include "nav.php"; ?>

<div class="d-flex justify-content-center mt-5">
    <h1>Wir bereiten Ihre Bestellung vor!</h1>
</div>
<div class="container-fluid mt-5 p-5">
    <div class="row">
        <aside class="col-lg-9">
            <div class="card">
                <div class="table-responsive">
                    <table class="table table-borderless table-shopping-cart">
                        <thead class="text-muted">
                        <tr class="small text-uppercase">
                            <th scope="col">Product</th>
                            <th scope="col" width="120">Zahl</th>
                            <th scope="col" width="120">Preis</th>
                            <th scope="col" width="120">Menge Preis</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($warenkorb as $cartItem): ?>
                            <tr>
                                <td>
                                    <figure class="itemside align-items-center">

                                        <figcaption class="info">
                                            <p class="title text-dark"
                                               data-abc="true"><?php echo $cartItem['p_name']; ?></p>

                                        </figcaption>
                                    </figure>
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price"><?php echo $cartItem['zahl']; ?></var>
                                    </div>
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price">€<?php echo $cartItem['preis']; ?></var>
                                    </div>
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price">€<?php echo ($cartItem['preis'] * $cartItem['zahl']); ?></var>
                                    </div>
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
                        <dd  class="text-right ml-3 text-success h3">
                            <?php
                            $totalPrice = 0;
                            foreach ($warenkorb as $cartItem) {
                                $totalPrice += ($cartItem['preis'] * $cartItem['zahl']);
                            }
                            echo '€' . number_format($totalPrice, 2); 
                            ?>
                        </dd>
                    </dl>
                </div>
            </div>
        </aside>
    </div>
</div>

<?php include "footer.php"; ?>

<script>
    // nachdem 5000 milisekunden zur Hauptseite
    setTimeout(function () {
        window.location.href = "index.php"; 
    }, 5000);


    
</script>
</body>

</html>
