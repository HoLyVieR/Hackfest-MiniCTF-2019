<html lang="en">
  <head>
    <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>

  <body>
    <div class="container">
      <br /><br />
      <form method="GET">
        <div class="form-group">
          <label for="profile">Profile</label>
          <select name="id" class="form-control" id="profile">
            <option value="2">Bob profile</option>
            <option value="3">Alice profile</option>
          </select>
        </div>

        <button type="submit" class="btn btn-primary">View</button>
      </form>

      <?php if (isset($_GET['id']) && $_GET['id'] === '1') { ?>
        <p class="well">This is Admin profile.</p>
        <div class="alert alert-success">FLAG-73344c25870d46c1e2084e8a618c110f</div>
      <?php } ?>

      <?php if (isset($_GET['id']) && $_GET['id'] === '2') { ?>
        <p class="well">This is Bob profile.</p>
      <?php } ?>

      <?php if (isset($_GET['id']) && $_GET['id'] === '3') { ?>
        <p class="well">This is Alice profile.</p>
      <?php } ?>
    </div>
  </body>
</html>
