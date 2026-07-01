<?php
include('../assets/mashaAllah/gyada.php');

$did = 1;
$from_date = '';
$to_date = '';

$running_q = mysqli_query($con, "SELECT * FROM deposit_history WHERE customerID='$did' ORDER BY deposit_date ASC, id ASC");
echo "Total rows fetched from DB: " . mysqli_num_rows($running_q) . "\n";

// Sales and payment totals to compute outstanding balance starting point
$facilityID = 'MURG/001'; // Mock branch
$sales_query = mysqli_query($con, "SELECT SUM(CAST(subtotal AS DECIMAL(10,2)) - (CAST(item_discount AS DECIMAL(10,2)) * CAST(quantity AS INT))) as total_sales FROM orders WHERE customerID='$did' AND facilityID='$facilityID'");
$sales_data = mysqli_fetch_array($sales_query);
$total_sales = $sales_data['total_sales'] ?? 0;

$discount_query = mysqli_query($con, "SELECT SUM(CAST(discount AS DECIMAL(10,2))) as total_discount FROM (SELECT orderID, discount FROM orders WHERE customerID='$did' AND facilityID='$facilityID' GROUP BY orderID) as t");
$discount_data = mysqli_fetch_array($discount_query);
$total_discount = $discount_data['total_discount'] ?? 0;

$initial_payment_query = mysqli_query($con, "SELECT SUM(CAST(amount_paid AS DECIMAL(10,2))) as total_initial_paid FROM (SELECT orderID, amount_paid FROM orders WHERE customerID='$did' AND facilityID='$facilityID' GROUP BY orderID) as t");
$initial_payment_data = mysqli_fetch_array($initial_payment_query);
$total_initial_paid = $initial_payment_data['total_initial_paid'] ?? 0;

$temp_running_balance = $total_sales - $total_discount - $total_initial_paid;
echo "Starting running balance: $temp_running_balance\n";

$history_deposits = [];
while ($d = mysqli_fetch_array($running_q)) {
    $d['calculated_prev'] = $temp_running_balance;
    $temp_running_balance -= floatval($d['amount']);
    $d['calculated_new'] = $temp_running_balance;
    
    $matches_filter = true;
    if (!empty($from_date) && !empty($to_date)) {
        $dep_date = date('Y-m-d', strtotime($d['deposit_date']));
        if ($dep_date < $from_date || $dep_date > $to_date) {
            $matches_filter = false;
        }
    }
    
    if ($matches_filter) {
        $history_deposits[] = $d;
    }
}

echo "Deposits after matching filter (total before limit): " . count($history_deposits) . "\n";

$history_deposits = array_reverse($history_deposits);
if (empty($from_date) || empty($to_date)) {
    $history_deposits = array_slice($history_deposits, 0, 5);
}

echo "Deposits after slicing (limit 5): " . count($history_deposits) . "\n";
print_r($history_deposits);
?>
