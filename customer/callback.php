<?php
include "../sql.php";

// Read the JSON data from mpesastkresponse.json
$stkCallbackResponse = file_get_contents('mpesastkresponse.json');

// Decode the JSON data
$data = json_decode($stkCallbackResponse);

// Check if the data is valid
if ($data && isset($data->Body->stkCallback)) {
    // Extract relevant information from the decoded JSON data
    $stkCallback = $data->Body->stkCallback;
    
    $MerchantRequestID = $stkCallback->MerchantRequestID ?? null;
    $CheckoutRequestID = $stkCallback->CheckoutRequestID ?? null;
    $ResultCode = $stkCallback->ResultCode ?? null;
    $ResultDesc = $stkCallback->ResultDesc ?? null;
    
    // Check if the transaction was successful
    if ($ResultCode == 0) {
        // Extract transaction details
        $CallbackMetadata = $stkCallback->CallbackMetadata ?? null;
        if ($CallbackMetadata) {
            $Amount = $CallbackMetadata->Item[0]->Value ?? null;
            $MpesaReceiptNumber = $CallbackMetadata->Item[1]->Value ?? null;
            $TransactionDate = $CallbackMetadata->Item[2]->Value ?? null;
            $PhoneNumber = $CallbackMetadata->Item[3]->Value ?? null;
            
            // Insert into the database
            $query = "INSERT INTO transactions (MerchantRequestID, CheckoutRequestID, ResultCode, Amount, MpesaReceiptNumber, TransactionDate, PhoneNumber) 
                      VALUES ('$MerchantRequestID', '$CheckoutRequestID', '$ResultCode', '$Amount', '$MpesaReceiptNumber', '$TransactionDate', '$PhoneNumber')";
            $result = mysqli_query($conn, $query);
            
            if ($result) {
                // Redirect if successful
                header("Location: cmoney_transfered.php");
                exit();
            } else {
                echo "Error storing transaction details: " . mysqli_error($conn);
            }
        } else {
            echo "CallbackMetadata is missing.";
        }
    } else {
        echo "Transaction was not successful. ResultDesc: $ResultDesc";
    }
} else {
    echo "Invalid or missing data in the JSON response.";
}
?>
