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
/*a{
text-decoration: none;
}
.main-wrap {
background: #000;
text-align: center;
}
.main-wrap h1 {
color: #fff;
margin-top: 50px;
margin-bottom: 100px;
}
.col-md-3 {
display: block;
float:left;
margin: 1% 0 1% 1.6%;
background-color: #eee;
padding: 50px 0;
}
.col:first-of-type {
margin-left: 0;
}*/
/* ALL LOADERS */
.loader{
width: 100px;
height: 100px;
border-radius: 100%;
position: relative;
margin: 0 auto;
}
/* LOADER 1 */
#loader-1:before, #loader-1:after{
content: "";
position: absolute;
top: -10px;
left: -10px;
width: 100%;
height: 100%;
border-radius: 100%;
border: 10px solid transparent;
border-top-color: #3498db;
}
#loader-1:before{
z-index: 100;
animation: spin 1s infinite;
}
#loader-1:after{
border: 10px solid #ccc;
}
@keyframes spin{
0%{
-webkit-transform: rotate(0deg);
-ms-transform: rotate(0deg);
-o-transform: rotate(0deg);
transform: rotate(0deg);
}
100%{
-webkit-transform: rotate(360deg);
-ms-transform: rotate(360deg);
-o-transform: rotate(360deg);
transform: rotate(360deg);
}
}
/* LOADER 2 */
#loader-2 span{
display: inline-block;
width: 20px;
height: 20px;
border-radius: 100%;
background-color: #3498db;
margin: 35px 5px;
}
#loader-2 span:nth-child(1){
animation: bounce 1s ease-in-out infinite;
}
#loader-2 span:nth-child(2){
animation: bounce 1s ease-in-out 0.33s infinite;
}
#loader-2 span:nth-child(3){
animation: bounce 1s ease-in-out 0.66s infinite;
}
@keyframes bounce{
0%, 75%, 100%{
-webkit-transform: translateY(0);
-ms-transform: translateY(0);
-o-transform: translateY(0);
transform: translateY(0);
}
25%{
-webkit-transform: translateY(-20px);
-ms-transform: translateY(-20px);
-o-transform: translateY(-20px);
transform: translateY(-20px);
}
}
/* LOADER 3 */
#loader-3:before, #loader-3:after{
content: "";
width: 20px;
height: 20px;
position: absolute;
top: 0;
left: calc(50% - 10px);
background-color: #3498db;
animation: squaremove 1s ease-in-out infinite;
}
#loader-3:after{
bottom: 0;
animation-delay: 0.5s;
}
@keyframes squaremove{
0%, 100%{
-webkit-transform: translate(0,0) rotate(0);
-ms-transform: translate(0,0) rotate(0);
-o-transform: translate(0,0) rotate(0);
transform: translate(0,0) rotate(0);
}
25%{
-webkit-transform: translate(40px,40px) rotate(45deg);
-ms-transform: translate(40px,40px) rotate(45deg);
-o-transform: translate(40px,40px) rotate(45deg);
transform: translate(40px,40px) rotate(45deg);
}
50%{
-webkit-transform: translate(0px,80px) rotate(0deg);
-ms-transform: translate(0px,80px) rotate(0deg);
-o-transform: translate(0px,80px) rotate(0deg);
transform: translate(0px,80px) rotate(0deg);
}
75%{
-webkit-transform: translate(-40px,40px) rotate(45deg);
-ms-transform: translate(-40px,40px) rotate(45deg);
-o-transform: translate(-40px,40px) rotate(45deg);
transform: translate(-40px,40px) rotate(45deg);
}
}
/* LOADER 4 */
#loader-4 span{
display: inline-block;
width: 20px;
height: 20px;
border-radius: 100%;
background-color: #3498db;
margin: 35px 5px;
opacity: 0;
}
#loader-4 span:nth-child(1){
animation: opacitychange 1s ease-in-out infinite;
}
#loader-4 span:nth-child(2){
animation: opacitychange 1s ease-in-out 0.33s infinite;
}
#loader-4 span:nth-child(3){
animation: opacitychange 1s ease-in-out 0.66s infinite;
}
@keyframes opacitychange{
0%, 100%{
opacity: 0;
}
60%{
opacity: 1;
}
}
/* LOADER 5 */
#loader-5 span{
display: block;
position: absolute;
left: calc(50% - 20px);
top: calc(50% - 20px);
width: 20px;
height: 20px;
background-color: #3498db;
}
#loader-5 span:nth-child(2){
animation: moveanimation1 1s ease-in-out infinite;
}
#loader-5 span:nth-child(3){
animation: moveanimation2 1s ease-in-out infinite;
}
#loader-5 span:nth-child(4){
animation: moveanimation3 1s ease-in-out infinite;
}
@keyframes moveanimation1{
0%, 100%{
-webkit-transform: translateX(0px);
-ms-transform: translateX(0px);
-o-transform: translateX(0px);
transform: translateX(0px);
}
75%{
-webkit-transform: translateX(30px);
-ms-transform: translateX(30px);
-o-transform: translateX(30px);
transform: translateX(30px);
}
}
@keyframes moveanimation2{
0%, 100%{
-webkit-transform: translateY(0px);
-ms-transform: translateY(0px);
-o-transform: translateY(0px);
transform: translateY(0px);
}
75%{
-webkit-transform: translateY(30px);
-ms-transform: translateY(30px);
-o-transform: translateY(30px);
transform: translateY(30px);
}
}
@keyframes moveanimation3{
0%, 100%{
-webkit-transform: translate(0px, 0px);
-ms-transform: translate(0px, 0px);
-o-transform: translate(0px, 0px);
transform: translate(0px, 0px);
}
75%{
-webkit-transform: translate(30px, 30px);
-ms-transform: translate(30px, 30px);
-o-transform: translate(30px, 30px);
transform: translate(30px, 30px);
}
}
/* LOADER 6 */
#loader-6{
top: 40px;
left: -2.5px;
}
#loader-6 span{
display: inline-block;
width: 5px;
height: 20px;
background-color: #3498db;
}
#loader-6 span:nth-child(1){
animation: grow 1s ease-in-out infinite;
}
#loader-6 span:nth-child(2){
animation: grow 1s ease-in-out 0.15s infinite;
}
#loader-6 span:nth-child(3){
animation: grow 1s ease-in-out 0.30s infinite;
}
#loader-6 span:nth-child(4){
animation: grow 1s ease-in-out 0.45s infinite;
}
@keyframes grow{
0%, 100%{
-webkit-transform: scaleY(1);
-ms-transform: scaleY(1);
-o-transform: scaleY(1);
transform: scaleY(1);
}
50%{
-webkit-transform: scaleY(1.8);
-ms-transform: scaleY(1.8);
-o-transform: scaleY(1.8);
transform: scaleY(1.8);
}
}
/* LOADER 7 */
#loader-7{
-webkit-perspective: 120px;
-moz-perspective: 120px;
-ms-perspective: 120px;
perspective: 120px;
}
#loader-7:before{
content: "";
position: absolute;
left: 25px;
top: 25px;
width: 50px;
height: 50px;
background-color: #3498db;
animation: flip 1s infinite;
}
@keyframes flip {
0% {
transform: rotate(0);
}
50% {
transform: rotateY(180deg);
}
100% {
transform: rotateY(180deg)  rotateX(180deg);
}
}
/* LOADER 8 */
#loader-8:before{
content: "";
position: absolute;
width: 10px;
height: 10px;
top: calc(50% - 10px);
left: 0px;
background-color: #3498db;
animation: rotatemove 1s infinite;
}
@keyframes rotatemove{
0%{
-webkit-transform: scale(1) translateX(0px);
-ms-transform: scale(1) translateX(0px);
-o-transform: scale(1) translateX(0px);
transform: scale(1) translateX(0px);
}
100%{
-webkit-transform: scale(2) translateX(45px);
-ms-transform: scale(2) translateX(45px);
-o-transform: scale(2) translateX(45px);
transform: scale(2) translateX(45px);
}
}
</style>
<div class="content py-5">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="card rounded-0 card-outline card-primary shadow">
                <div class="card-header rounded-0">
                    <h5 class="card-title">Payment Confirmation</h5>
                </div>
                <div class="card-body rounded-0">
                    <center>
                    <div class="col-md-3 bg">
                        <div class="loader" id="loader-4">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                    <span class="text-success">please don't leave this page we will redirect you when the payment process is complete!</span>
                    </center>
                    
                    <!-- <form action="#" method="POST">
                        <div class="form-group">
                            <input type="text" class="form-control form-control-sm form-control-border" name="token" required>
                            <small class="text-muted mx-2">Enter Transaction Token</small>
                        </div>
                        <input type="submit" name="pay" value="Pay" class="btn btn-primary btn-block"><br>
                    </form> -->
                    <!-- <span class="text-danger">
                        <center>Please await for approval of the payments to get your ticket</center>
                    </span> -->
                </div>
            </div>
        </div>
        <div class="col-sm-3"></div>
    </div>
</div>
<script>
    function doAjax() {
    var sid= "<?php echo $_SESSION['iding']; ?>";
    var interval = 1000;  // 1000 = 1 second, 3000 = 3 seconds
    $.ajax({
            url: _base_url_+"classes/Master.php?f=check_payment",
            data: interval,
            cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
                success:function(resp){
                    if(resp.status == 'success'){
                        // alert_toast("Success",'success')
                        location.href = "./?page=tickets&ids="+sid
                    }
            },
    });
}
$(document).ready(function(){
    setInterval(function() {
            doAjax();
    }, 1000);
});



</script>