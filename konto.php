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
  <div class="konto mt-5 d-flex justify-content-center">
      <form action="login.php" method="post" class="w-25">
        <!-- Email input -->
       
          <input
            type="email"
            id="form1Example1"
            class="form-control"
            name="email"
            required
          />
          <label class="form-label" for="email">Email address</label>
        

        <!-- Password input -->
        
          <input
            type="password"
            id="form1Example2"
            class="form-control"
            name="password"
            required
          />
          <label class="form-label" for="password">Password</label>
        

        <!-- Submit button -->
        <button type="submit" class="btn btn-primary btn-lg w-100">
          Sign in
        </button>
      </form>
    </div>

    <!-- Footer -->
    <?php include "footer.php"; ?>
  </body>
</html>
