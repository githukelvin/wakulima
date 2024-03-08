<?php
include ("incl/header.incl.php");
?>

<div class="text-center">
       
     
         <h1>------------------------------------  Welcome ---------------------------------------</h1>
         <h2>To view reports click below.</h2>
        
         <div class="container">
         
        <div class="span span3" >
           <a href='reports/index.php'>
                <img src="css/reportsz.png"><br/>
                <strong>  Reports</strong>
            </a>
            </div>
            <div class="span span3 " >
            <a href='payment/index.php'>
                <img src="css/salesz.jpg"><br/>
                <strong> Payments</strong>
            </a>
</div>
</div>
</div>

<?php
$footer = 'incl/footer.incl.php';
include ("$footer");
?>