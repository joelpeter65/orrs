<?php
include('php/api.php');
if(isset($_GET['sid'])){
$trains = $conn->query("SELECT *,Concat(code,' - ',`name`) as train FROM `train_list` where id in (SELECT train_id FROM `schedule_list` where delete_flag = 0 and id='{$_GET['sid']}') ");
$res = $trains->fetch_all(MYSQLI_ASSOC);
$train_fcf_arr = array_column($res,'first_class_capacity','id');
$train_ef_arr = array_column($res,'economy_capacity','id');
$train_arr = array_column($res,'train','id');
$_SESSION['id'] = $_GET['sid'];
$qry = $conn->query("SELECT * from `schedule_list` where delete_flag = 0 and id='{$_GET['sid']}'");
if($qry->num_rows > 0){
$res = $qry->fetch_array();
foreach($res as $k => $v){
if(!is_numeric($k))
$$k = $v;
}
}else{
// echo '<script> alert("Unkown Schedule ID.");location.replace("./?page=schedules") </script>';
}
} else{
// echo '<script> alert("Schedule ID is required to view this page.");location.replace("./?page=schedules") </script>';
}
?>
<?php
/*if (isset($_POST['pay'])) {
// This is to ensure browser does not timeout after 30 seconds
ini_set('max_execution_time', 300);
set_time_limit(300);
// Public key on the API listener used to encrypt keys
$public_key = 'MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEArv9yxA69XQKBo24BaF/D+fvlqmGdYjqLQ5WtNBb5tquqGvAvG3WMFETVUSow/LizQalxj2ElMVrUmzu5mGGkxK08bWEXF7a1DEvtVJs6nppIlFJc2SnrU14AOrIrB28ogm58JjAl5BOQawOXD5dfSk7MaAA82pVHoIqEu0FxA8BOKU+RGTihRU+ptw1j4bsAJYiPbSX6i71gfPvwHPYamM0bfI4CmlsUUR3KvCG24rB6FNPcRBhM3jDuv8ae2kC33w9hEq8qNB55uw51vK7hyXoAa+U7IqP1y6nBdlN25gkxEA8yrsl1678cspeXr+3ciRyqoRgj9RD/ONbJhhxFvt1cLBh+qwK2eqISfBb06eRnNeC71oBokDm3zyCnkOtMDGl7IvnMfZfEPFCfg5QgJVk1msPpRvQxmEsrX9MQRyFVzgy2CWNIb7c+jPapyrNwoUbANlN8adU1m6yOuoX7F49x+OjiG2se0EJ6nafeKUXw/+hiJZvELUYgzKUtMAZVTNZfT8jjb58j8GVtuS+6TM2AutbejaCV84ZK58E2CRJqhmjQibEUO6KPdD7oTlEkFy52Y1uOOBXgYpqMzufNPmfdqqqSM4dU70PO8ogyKGiLAIxCetMjjm6FCMEA3Kc8K0Ig7/XtFm9By6VxTJK1Mg36TlHaZKP6VzVLXMtesJECAwEAAQ==';
// Create Context with API to request a Session ID
$context = new APIContext();
// Session key
$context->set_api_key('6bc4157dbowkdd409118e0978dc6991a');
// Public key
$context->set_public_key($public_key);
// Use ssl/https
$context->set_ssl(true);
// Method type (can be GET/POST/PUT)
$context->set_method_type(APIMethodType::POST);
// API address
$context->set_address('openapi.m-pesa.com');
// API Port
$context->set_port(443);
// API Path
$context->set_path('/sandbox/ipg/v2/vodafoneTZN/c2bPayment/singleStage/');
// Add/update headers
$context->add_header('Origin', '*');
// Parameters can be added to the call as well that on POST will be in JSON format and on GET will be URL parameters
// $context->add_parameter('key', 'value');
$context->add_parameter('input_Amount', '$_POST["amount"]');
$context->add_parameter('input_Country', 'TZN');
$context->add_parameter('input_Currency', 'TZS');
$context->add_parameter('input_CustomerMSISDN', '000000000001');
$context->add_parameter('input_ServiceProviderCode', '000000');
$context->add_parameter('input_ThirdPartyConversationID', 'asv02e5958774f7ba228d83d0d689761');
$context->add_parameter('input_TransactionReference', 'T1234C');
$context->add_parameter('input_PurchasedItemsDesc', 'Ticket Payment');
// Create a request object
$request = new APIRequest($context);
// Do the API call and put result in a response packet
$response = null;
try {
$response = $request->execute();
} catch(exception $e) {
echo 'Call failed: ' . $e->getMessage() . '<br>';
}
if ($response->get_body() == null) {
throw new Exception('API call failed to get result. Please check.');
}
// Display results
echo $response->get_status_code() . '<br>';
echo $response->get_headers() . '<br>';
echo $response->get_body() . '<br>';
// Decode JSON packet
$decoded = json_decode($response->get_body());
}*/
?>
<?php
if (isset($_POST['pay'])) {
$token = $_POST['token'];
$iding = $_SESSION['iding'];
$query = mysqli_query($conn, "INSERT INTO pay (token) VALUES ('$token')");
if ($query) {
echo "<script> window.location.href='./?page=tickets&ids=$iding' </script>";
}
}
?>
<div class="content py-5">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="card rounded-0 card-outline card-primary shadow">
                <div class="card-header rounded-0">
                    <h5 class="card-title">Payments</h5>
                </div>
                <div class="card-body rounded-0">
                    <form action="#" method="POST">
                        <div class="form-group">
                            <input type="text" class="form-control form-control-sm form-control-border" name="token" required>
                            <small class="text-muted mx-2">Enter Transaction Token</small>
                        </div>
                        <input type="submit" name="pay" value="Pay" class="btn btn-primary btn-block"><br>
                    </form>
                    <!-- <span class="text-danger">
                        <center>Please await for approval of the payments to get your ticket</center>
                    </span> -->
                </div>
            </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
</div>