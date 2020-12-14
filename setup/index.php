<?php
require_once 'lb_helper.php'; // Include LicenseBox external/client api helper file
$api = new LicenseBoxAPI(); // Initialize a new LicenseBoxAPI object
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>PayPark</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
        <style>
        .book-a-point_Preloader {position: absolute; width: 150px; height: 150px; z-index: 1; left: 50%; top: 50%; transform: translate(-50%,-50%);  }
.book-a-point_Preloader img {position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%); }
.bookapointoverlay {position: absolute; top: 0; left: 0; height: 100%; width: 100%; background-color: rgba(0,0,0,0.5); z-index: 10;  }
   </style>
    <style type="text/css">

      body ,html{
        /* background-image: linear-gradient(to left bottom,#add100,#7b920a); */
        /* background: radial-gradient(circle at 20% 90%, #e39f73 0%, #e37376 5%, #d34f86 30%,#9850ab 60%,#6776a1 90%); */
        /* background: radial-gradient(circle at 30% 107%, #fdc07d 5%, #fd5949 33%,#d6249f 60%,#4b587f 90%); */
        background:#eee;
        height: 100%;
      }.title{color: #172b4d;}
      .box{
        box-shadow: 2px 7px 12px 2px #6f6e714f;
        border:none;
      }.button.is-link{
        background-color: #172b4d;
      }
      .button.is-link.is-hovered, .button.is-link:hover{
        background-color: #172b4d;
      }
      .tabs li.is-active a{
        border-bottom-color: #172b4d;
        color: #172b4d;
      }
    </style>
  </head>
  <body>
   <div id="main_loader" style="display: none">
        <div class="bookapointoverlay"></div>
        <div class="book-a-point_Preloader">
            <img src="https://cdn.dribbble.com/users/1469628/screenshots/3274806/loader_holiday.gif" alt="Preloader">
            <!-- <img src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/3f3a3831234507.564a1d2338123.gif" alt="Preloader"> -->
        </div>
    </div>

    <?php
$errors = false;
$step = isset($_GET['step']) ? $_GET['step'] : '';
?>
    <div class="container">
      <div class="section">
        <div class="column is-6 is-offset-3">
          <center>
            <h1 class="title" style="padding-top: 20px">PayPark Installation</h1><br>
          </center>
          <div class="box">
            <?php
switch ($step) {
    default: ?>
                <div class="tabs is-fullwidth">
                  <ul>
                    <li class="is-active">
                      <a>
                        <span><b>Requirements</b></span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>Verify</span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>Database</span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>Finish</span>
                      </a>
                    </li>
                  </ul>
                </div>
                <?php
// Add or remove your script's requirements below
        if (phpversion() < "7.2") {
            $errors = true;
            echo "<div class='notification is-danger' style='padding:12px;'><i class='fa fa-times'></i> Current PHP version is " . phpversion() . "! minimum PHP 7.2 or higher required.</div>";
        } else {
            echo "<div class='notification is-success' style='padding:12px;'><i class='fa fa-check'></i> You are running PHP version " . phpversion() . "</div>";
        }
        if (!extension_loaded('mysqli')) {
            $errors = true;
            echo "<div class='notification is-danger' style='padding:12px;'><i class='fa fa-times'></i> MySQLi PHP extension missing!</div>";
        } else {
            echo "<div class='notification is-success' style='padding:12px;'><i class='fa fa-check'></i> MySQLi PHP extension available</div>";
        }?>
                <div style='text-align: right;'>
                  <?php if ($errors == true) {?>
                  <a href="#" class="button is-link" disabled>Next</a>
                  <?php } else {?>
                  <a href="index.php?step=0" class="button is-link">Next</a>
                  <?php }?>
                </div><?php
break;
    case "0": ?>
                <div class="tabs is-fullwidth">
                  <ul>
                    <li>
                      <a>
                        <span><i class="fa fa-check-circle"></i> Requirements</span>
                      </a>
                    </li>
                    <li class="is-active">
                      <a>
                        <span><b>Verify</b></span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>Database</span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>Finish</span>
                      </a>
                    </li>
                  </ul>
                </div>
                <?php
$license_code = null;
        $client_name = null;
        if (!empty($_POST['license']) && !empty($_POST['client'])) {
            $license_code = strip_tags(trim($_POST["license"]));
            $client_name = strip_tags(trim($_POST["client"]));
            /* Once we have the license code and client's name we can use LicenseBoxAPI's activate_license() function for activating/installing the license, if the third parameter is empty a local license file will be created which can be used for background license checks. */

            $activate_response = $api->activate_license($license_code, $client_name);
            if (empty($activate_response)) {
                $msg = 'Server is unavailable.';
            } else {
                $msg = $activate_response['message'];
            }
            if ($activate_response['status'] !== true) {?>
                      <form action="index.php?step=0" method="POST">
                        <div class="notification is-danger"><?php echo ucfirst($msg); ?></div>
                        <div class="field">
                          <label class="label">License code (any key)</label>
                          <div class="control">
                            <input class="input" type="text" placeholder="enter any string" name="license" required>
                          </div>
                        </div>
                        <div class="field">
                          <label class="label">Your name (any name)</label>
                          <div class="control">
                            <input class="input" type="text" placeholder="enter any string" name="client" required>
                          </div>
                        </div>
                        <div style='text-align: right;'>
                          <button type="submit" class="button is-link db-import">Verify</button>
                        </div>
                      </form><?php
} else {?>
                      <form action="index.php?step=1" method="POST">
                        <div class="notification is-success"><?php echo ucfirst($msg); ?></div>
                        <input type="hidden" name="lcscs" id="lcscs" value="<?php echo ucfirst($activate_response['status']); ?>">
                        <div style='text-align: right;'>
                          <button type="submit" class="button is-link">Next</button>
                        </div>
                      </form><?php
}
        } else {?>
                    <form action="index.php?step=0" method="POST">
                      <div class="field">
                        <label class="label">License code</label>
                        <div class="control">
                          <input class="input" type="text" placeholder="enter your purchase/license code" name="license" required>
                        </div>
                      </div>
                      <div class="field">
                        <label class="label">Your name</label>
                        <div class="control">
                          <input class="input" type="text" placeholder="enter your name/envato username" name="client" required>
                        </div>
                      </div>
                      <div style='text-align: right;'>
                        <button type="submit" class="button is-link db-import">Verify</button>
                      </div>
                    </form>
                  <?php }
        break;
    case "1": ?>
                <div class="tabs is-fullwidth">
                  <ul>
                    <li>
                      <a>
                        <span><i class="fa fa-check-circle"></i> Requirements</span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span><i class="fa fa-check-circle"></i> Verify</span>
                      </a>
                    </li>
                    <li class="is-active">
                      <a>
                        <span><b>Database</b></span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span>Finish</span>
                      </a>
                    </li>
                  </ul>
                </div>
                <?php
if ($_POST && isset($_POST["lcscs"])) {
            $valid = strip_tags(trim($_POST["lcscs"]));
            $db_host = strip_tags(trim($_POST["host"]));
            $db_user = strip_tags(trim($_POST["user"]));
            $db_pass = strip_tags(trim($_POST["pass"]));
            $db_name = strip_tags(trim($_POST["name"]));
            // Let's import the sql file into the given database
            if (!empty($db_host)) {
                $con = @mysqli_connect($db_host, $db_user, $db_pass, $db_name);
                if (mysqli_connect_errno()) {?>
                        <form action="index.php?step=1" method="POST">
                          <div class='notification is-danger'>Failed to connect to MySQL: <?php echo mysqli_connect_error(); ?></div>
                          <input type="hidden" name="lcscs" id="lcscs" value="<?php echo $valid; ?>">
                          <div class="field">
                            <label class="label">Database Host</label>
                            <div class="control">
                              <input class="input" type="text" id="host" placeholder="enter your database host" name="host" required>
                            </div>
                          </div>
                          <div class="field">
                            <label class="label">Database Username</label>
                            <div class="control">
                              <input class="input" type="text" id="user" placeholder="enter your database username" name="user" required>
                            </div>
                          </div>
                          <div class="field">
                            <label class="label">Database Password</label>
                            <div class="control">
                              <input class="input" type="text" id="pass" placeholder="enter your database password" name="pass">
                            </div>
                          </div>
                          <div class="field">
                            <label class="label">Database Name</label>
                            <div class="control">
                              <input class="input" type="text" id="name" placeholder="enter your database name" name="name" required>
                            </div>
                          </div>
                          <div style='text-align: right;'>
                            <button type="submit" class="button is-link db-import">Import</button>
                          </div>
                        </form><?php
exit;
                }
                $templine = '';
                $filename = "paypark_client.sql";
                $lines = file($filename);
                foreach ($lines as $line) {
                    if (substr($line, 0, 2) == '--' || $line == '') {
                        continue;
                    }

                    $templine .= $line;
                    $query = false;
                    if (substr(trim($line), -1, 1) == ';') {
                        $query = mysqli_query($con, $templine);
                        $templine = '';
                    }
                }?>
                    <form action="index.php?step=2" method="POST">
                      <div class='notification is-success'> Database was successfully imported.<?php $db_host?></div>
                      <input type="hidden" name="dbscs" id="dbscs" value="true">
                      <input type="hidden" name="db_host" id="db_host" value="<?php echo $db_host; ?>">
                      <input type="hidden" name="db_user" id="db_user" value="<?php echo $db_user; ?>">
                      <input type="hidden" name="db_pass" id="db_pass" value="<?php echo $db_pass; ?>">
                      <input type="hidden" name="db_name" id="db_name" value="<?php echo $db_name; ?>">
                      <div style='text-align: right;'>
                        <button type="submit" class="button is-link">Next</button>
                      </div>
                    </form>
                    <?php
} else {?>

                    <label class="label">It's take some time to import, Please Wait.</label>
                    <form action="index.php?step=1" method="POST">
                      <input type="hidden" name="lcscs" id="lcscs" value="<?php echo $valid; ?>">
                      <div class="field">
                        <label class="label">Database Host</label>
                        <div class="control">
                          <input class="input" type="text" id="host" placeholder="enter your database host" name="host" required>
                        </div>
                      </div>
                      <div class="field">
                        <label class="label">Database Username</label>
                        <div class="control">
                          <input class="input" type="text" id="user" placeholder="enter your database username" name="user" required>
                        </div>
                      </div>
                      <div class="field">
                        <label class="label">Database Password</label>
                        <div class="control">
                          <input class="input" type="text" id="pass" placeholder="enter your database password" name="pass">
                        </div>
                      </div>
                      <div class="field">
                        <label class="label">Database Name</label>
                        <div class="control">
                          <input class="input" type="text" id="name" placeholder="enter your database name" name="name" required>
                        </div>
                      </div>
                      <div style='text-align: right;'>

                        <button type="submit" class="button is-link db-import">Import</button>
                      </div>
                    </form><?php
}
        } else {?>
                <div class='notification is-danger'>Sorry, something went wrong.</div><?php
}
        break;
    case "2": ?>
              <div class="tabs is-fullwidth">
                <ul>
                  <li>
                    <a>
                      <span><i class="fa fa-check-circle"></i> Requirements</span>
                    </a>
                  </li>
                  <li>
                    <a>
                      <span><i class="fa fa-check-circle"></i> Verify</span>
                    </a>
                  </li>
                  <li>
                    <a>
                      <span><i class="fa fa-check-circle"></i> Database</span>
                    </a>
                  </li>
                  <li class="is-active">
                    <a>
                      <span><b>Finish</b></span>
                    </a>
                  </li>
                </ul>
              </div>
              <?php
if ($_POST && isset($_POST["dbscs"])) {
            $valid = $_POST["dbscs"];
            $db_host = strip_tags(trim($_POST["db_host"]));
            $db_user = strip_tags(trim($_POST["db_user"]));
            $db_pass = strip_tags(trim($_POST["db_pass"]));
            $db_name = strip_tags(trim($_POST["db_name"]));
            ?>
                <center>
                  <p><strong>Set your Admin Credential.</strong></p><br>
                </center>
                <form action="#" id="admin-detal-form" method="POST">
                  <div class="field">
                    <label class="label">Admin Username</label>
                      <div class="control">
                        <input class="input" type="email" id="email" placeholder="Enter your admin username" name="email" required>
                        <p class="email" style='color:#f74416;'></p>
                      </div>
                  </div>
                  <input type="hidden" name="db_host" value="<?php echo $db_host; ?>">
                  <input type="hidden" name="db_user" value="<?php echo $db_user; ?>">
                  <input type="hidden" name="db_pass" value="<?php echo $db_pass; ?>">
                  <input type="hidden" name="db_name" value="<?php echo $db_name; ?>">

                  <div class="field">
                    <label class="label">Admin Password</label>
                      <div class="control">
                        <input class="input" type="password" id="password" placeholder="Enter your admin password" name="password" required>
                        <p class="password" style='color:#f74416;'></p>
                      </div>
                  </div>
                  <div style='text-align: right;'>
                        <button type="button" id="admin-login-btn" class="button is-link">Procced to Login</button>
                    </div>
                </form>
                <?php
} else {?>
                <div class='notification is-danger'>Sorry, something went wrong.</div><?php
}
        break;
}?>
        </div>
      </div>
    </div>
  </div>
  <div class="content has-text-centered">
    <p>© <?php echo date('Y'); ?> Copyright PayPark by SaaSMonks</p><br>
  </div>
</body>

<script>
jQuery(document).ready(function($) {
  // Code using $ as usual goes here.
$(".db-import").on('click', function(event){
    //console.log('derder');

$("#main_loader").show();


});
});
  jQuery(document).on("click","#admin-login-btn", function () {
      //  alert(window.location.origin + window.location.pathname);
        url = window.location.origin + window.location.pathname
        url = url.slice(0, -1)
        var name = url.substring(0, url.lastIndexOf("setup"));
        var formData = new FormData($('#admin-detal-form')[0]);
        $.ajax({
          type:"POST",
          url:name+"public/saveAdminData",
          data:formData,
          cache:false,
          contentType: false,
          processData: false,
          success: function(result){
            console.log('result',result)
            if(result.success==true){
              window.location.replace(result.data);
            }
          },
          error: function(err){
            console.log('err',err)
            for (let v1 of Object.keys( err.responseJSON.errors)) {
              $(".field ."+v1).html(Object.values(err.responseJSON.errors[v1]));
            }
          }
        });
    });
</script>
</html>
