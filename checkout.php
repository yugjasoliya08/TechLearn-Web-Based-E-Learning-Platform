<?php 
include('./dbConnection.php');
session_start();
if (!isset($_SESSION['stuLogEmail'])) {
    echo "<script> location.href='loginorsignup.php'; </script>";
} else {
    $stuEmail = $_SESSION['stuLogEmail'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pay now</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/style.css" />

    <!-- Inline CSS (Sirf checkout.php ke liye) -->
    <style>
        /* Page ka extra space hatane ke liye */
        body, html {
            margin: 0 !important;
            padding: 0 !important;
        }

        /* Container ko center me lane ke liye */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Pure screen height tak center */
        }

        /* Jumbotron ka extra margin/padding hataye */
        .jumbotron {
            padding: 20px;
            margin: 0;
            background-color: #f8f9fa; /* Light grey background */
        }
    </style>

</head>
<body>
<div class="container">
    <div class="col-sm-6 jumbotron">
        <h3 class="mb-4 text-center">Welcome to Tech Learn Payment Page</h3>
        <form id="paymentForm" method="post" action="./paymentdone.php">
            
            <div class="form-group">
                <label for="ORDER_ID">Order ID</label>
                <input id="ORDER_ID" class="form-control" name="ORDER_ID" value="<?php echo "ORDS" . rand(10000, 99999999) ?>" readonly>
            </div>

            <div class="form-group">
                <label for="CUST_ID">Student Email</label>
                <input id="CUST_ID" class="form-control" name="CUST_ID" value="<?php echo $stuEmail; ?>" readonly>
            </div>

            <div class="form-group">
                <label for="TXN_AMOUNT">Amount</label>
                <input id="TXN_AMOUNT" class="form-control" name="TXN_AMOUNT" value="<?php echo isset($_POST['id']) ? $_POST['id'] : ''; ?>" readonly>
            </div>

            <!-- Card Details -->
            <div class="form-group">
                <label for="card_number">Card Number</label>
                <input type="text" id="card_number" class="form-control" name="card_number" required placeholder="XXXX XXXX XXXX XXXX" maxlength="19">
                <small id="card_number_error" class="text-danger d-none">Enter a valid 16-digit card number</small>
            </div>

            <div class="form-group">
                <label for="expiry_date">Expiry Date</label>
                <input type="text" id="expiry_date" class="form-control" name="expiry_date" required placeholder="MM/YY" maxlength="5">
                <small id="expiry_date_error" class="text-danger d-none">Enter a valid expiration date</small>
            </div>

            <div class="form-group">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" class="form-control" name="cvv" maxlength="3" required placeholder="CVV">
                <small id="cvv_error" class="text-danger d-none">Enter a valid 3-digit CVV</small>
            </div>

            <div class="text-center">
                <button type="submit" id="checkoutBtn" class="btn btn-primary" disabled>Pay now</button>
                <a href="./courses.php" class="btn btn-secondary">Cancel</a>
            </div>

            <small class="form-text text-muted text-center">Note: Complete Payment by Clicking Checkout Button</small>
        </form>
    </div>
</div>

<!-- JavaScript Validation -->
<script>
    function validateCardNumber() {
        let cardInput = document.getElementById("card_number");
        let errorMsg = document.getElementById("card_number_error");
        let value = cardInput.value.replace(/\D/g, '').substring(0, 16); 
        cardInput.value = value.replace(/(\d{4})/g, '$1 ').trim();

        if (value.length !== 16) {
            errorMsg.classList.remove("d-none");
            return false;
        } else {
            errorMsg.classList.add("d-none");
            return true;
        }
    }

    function validateExpiryDate() {
        let expiryInput = document.getElementById("expiry_date");
        let errorMsg = document.getElementById("expiry_date_error");
        let value = expiryInput.value.replace(/[^0-9]/g, '');
        
        if (value.length > 2) {
            value = value.substring(0, 2) + '/' + value.substring(2, 4);
        }
        
        expiryInput.value = value.substring(0, 5);

        let match = value.match(/^(0[1-9]|1[0-2])\/(\d{2})$/);
        if (!match) {
            errorMsg.classList.remove("d-none");
            return false;
        }

        let month = parseInt(match[1], 10);
        let year = parseInt(match[2], 10);
        let currentYear = new Date().getFullYear() % 100;

        if (year < currentYear || month < 1 || month > 12) {
            errorMsg.classList.remove("d-none");
            return false;
        } else {
            errorMsg.classList.add("d-none");
            return true;
        }
    }

    function validateCVV() {
        let cvvInput = document.getElementById("cvv");
        let errorMsg = document.getElementById("cvv_error");
        let value = cvvInput.value.replace(/\D/g, '').substring(0, 3);
        cvvInput.value = value;

        if (value.length !== 3) {
            errorMsg.classList.remove("d-none");
            return false;
        } else {
            errorMsg.classList.add("d-none");
            return true;
        }
    }

    function validateForm() {
        let isCardValid = validateCardNumber();
        let isExpiryValid = validateExpiryDate();
        let isCVVValid = validateCVV();
        
        let checkoutBtn = document.getElementById("checkoutBtn");
        checkoutBtn.disabled = !(isCardValid && isExpiryValid && isCVVValid);
    }

    document.getElementById("card_number").addEventListener("input", validateForm);
    document.getElementById("expiry_date").addEventListener("input", validateForm);
    document.getElementById("cvv").addEventListener("input", validateForm);

    document.getElementById("paymentForm").addEventListener("submit", function(event) {
        if (!validateCardNumber() || !validateExpiryDate() || !validateCVV()) {
            event.preventDefault();
            alert("Please enter valid payment details before proceeding!");
        }
    });
</script>

<!-- JS Dependencies -->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/all.min.js"></script>

</body>
</html>
<?php } ?>
