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
$token = $_POST['token'];
$iding = $_SESSION['iding'];
$query = mysqli_query($conn, "INSERT INTO pay (token) VALUES ('$token')");
if ($query) {
echo "<script> window.location.href='./?page=tickets&ids=$iding' </script>";
}
}*/
?>
<style>
        .blink_me {
        animation: blinker 1s linear infinite;
        }
        @keyframes blinker {
        50% {
        opacity: 0;
        }
        }
        </style>
<div class="content py-5">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="card rounded-0 card-outline card-primary shadow">
                <div class="card-header rounded-0">
                    <h5 class="card-title">Payment Instructions</h5>
                </div>
                <div class="card-body rounded-0">
                    <h3 class="text-success">Bank Account</h3>
                    Bank Account Number: XXXXXXXXXXXXXXXXXX <br>
                    Bank Account Name: XXXXXX XXXXXXX
                    <hr>
                    <span class="text-danger">Please pay then proceed!</span><br>
                    <button class="btn btn-primary btn-block"  onclick="">Proceed <b>>>></b></button><!-- the next page iscalled pending -->
                </div>
            </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
</div>