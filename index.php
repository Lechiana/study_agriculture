<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Learn Agriculture</title>
    <link rel="stylesheet" href="agriculture.css">

</head>
<body>

    <ul>
        <li><a class="active" href="./index.php">หน้าแรก</a></li>
        <li><a href="./Secondary.php">เรื่องรอง</a></li>
    </ul>

    <div class="content">
        <h1>หัวข้อความรู้ หลัก</h1>
        <?php
            //1. เชื่อมต่อ database: 
            include('connection.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
        
            //2. query ข้อมูลจากตาราง tb_member: 
            $query = "SELECT * FROM group_project" or die("Error:" . mysqli_error()); 
            //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result . 
            $result = mysqli_query($con, $query); 
            //4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล: 
            
            echo "<table  width='1000px'>";
            //หัวข้อตาราง
            echo "<tr><td>เรื่อง</td><td>อ่าน</td></tr>";
            while($row = mysqli_fetch_array($result)) { 
                echo "<tr>";
                echo "<td>" .$row["group_name"] .  "</td> ";  
                echo "<td><button>คลิก!</button></td> ";
            }
            echo "</table>";
            //5. close connection
            mysqli_close($con);
        ?>
    </div>
   
</body>
</html>
