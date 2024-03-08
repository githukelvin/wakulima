<?php
include ("incl/header.incl.php");
?>

<div class="text-center">
       
<h1>Home</h1>
         <h2>Welcome to Wakulima Dairy,browse around and find out what page you can access.</h2>
       
<div class="container">
    <div class="span">
        <div class="span span2" >
            <a href='index.php'>
                <img src="css/angrycow.jpg"><br/>
                <strong> Farmers</strong>
            </a>
        </div>
        <div class="span span2" >
            <a href='employees/index.php'>
                <img src="css/usersz.jpg"><br/>
                <strong>   Users</strong>
            </a>
        </div>
        <div class="span span2" >
            <a href='delivery/index.php'>
                <img src="css/delivery.jpg"><br/>
                <strong>  Deliveries</strong>
            </a>
        </div>
        <div class="span span2" >
           <a href='reports/index.php'>
                <img src="css/reportsz.png"><br/>
                <strong>  Reports</strong>
            </a>
        </div>
        <div class="span span2" >
            <a href='payment/index.php'>
                <img src="css/salesz.jpg"><br/>
                <strong> Payments</strong>
            </a>
        </div>
        <div class="span span2" >
            <a href='settings/index.php'>
                <img src="css/paymentz.jpg"><br/>
                <strong>pricing</strong>
            </a>
        </div>
    </div>
</div>
            
        
         </div>

<?php
$footer = 'incl/footer.incl.php';
include ("$footer");
?>