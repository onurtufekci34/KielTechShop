<?php
require_once('db.php');

?>
   


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="konto.css" />
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
  <?php include "nav.php"; ?>


            

  <div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="center-content">
                <?php
                if ($_SERVER['REQUEST_METHOD'] === 'POST') {

                    $email = $_POST['email'];
                    $password = $_POST['password'];

                    // SQL
                    $sql = "SELECT * FROM kunden WHERE email = '$email' AND password = '$password'";

                    $result = $conn->query($sql);

                    if ($result->num_rows === 1) {
                        echo "<h2>Sie haben angemeldet!</h2>";
                        echo "<h2>Herzlich Willkommen...</h2>";

                    } else {
                        echo "<h2>Email oder Password ist falsch!</h2>";
                        echo "<a href='konto.php'>Zurück</a>";
                    }
                }
                ?>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<?php include "footer.php"; ?>
</body>
</html>

