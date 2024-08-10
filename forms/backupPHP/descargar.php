<?php
header("Content-disposition: attachment; filename=db-backup-".$fecha.".sql");
header("Content-type: MIME");

include("Function_Backup.php");
backup_tables("localhost", "laborio2_root123", "Loly_root*", "laborio2_loly");
$fecha=date("Y-m-d");
readfile("backups/db-backup-".$fecha.".sql");
// header("Location:backups/db_backup_2020-12-16.sql");

?>