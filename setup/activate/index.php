
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>MyScript - Activator</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css"/>
    <style type="text/css">
      body, html {
        background: #F7F7F7;
      }
    </style>
  </head>
  <body>
    <div class="container"> 
      <div class="section" >
        <div class="column is-6 is-offset-3">
          <center>
            <h1 class="title" style="padding-top: 20px">MyScript Activator</h1><br>
          </center>
          <div class="box">
           <?php
            $license_code = null;
            $client_name = null;
            if(!empty($_POST['license'])&&!empty($_POST['client'])){
              $license_code = strip_tags(trim($_POST["license"]));
              $client_name = strip_tags(trim($_POST["client"])); 
              /* Once we have the license code and client's name we can use LicenseBoxAPI's activate_license() function for activating/installing the license, if the third parameter is empty a local license file will be created which can be used for background license checks in the future using verify_license() function. */
              $activate_response = $api->activate_license($license_code, $client_name);
              if(empty($activate_response)){
                $msg = 'Server is unavailable.';
              }else{
                $msg = $activate_response['message'];
              }
              if($activate_response['status'] !== true){ ?>
                <form action="index.php" method="POST">
                  <div class="notification is-danger"><?php echo ucfirst($msg); ?></div>
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
                    <button type="submit" class="button is-link">Activate</button>
                  </div>
                </form><?php
              }else{ ?>
                <div class="notification is-success"><?php echo ucfirst($msg); ?></div><?php 
              }
            }else{ ?>
              <form action="index.php" method="POST">
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
                  <button type="submit" class="button is-link">Activate</button>
                </div>
              </form><?php 
            } ?>
          </div>
        </div>
      </div>
    </div>
    <div class="content has-text-centered">
      <p>Copyright <?php echo date('Y'); ?> Company, All rights reserved.</p><br>
    </div>
  </body>
</html>