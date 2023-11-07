<?php
$host = $_GET["ip"];
$result = exec("ping -c 5 -s 1024 $host", $output, $status);
echo implode('<br>', $output);
?>