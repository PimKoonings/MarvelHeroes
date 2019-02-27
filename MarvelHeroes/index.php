<?php
include("connect.php");//database connection
?>

<?php
    $teamId = 0;
    
    if (isset($_GET['teamId']))
{
    $teamId = $_GET['teamId'];
}

$heroId = 0;
    
if (isset($_GET['heroId']))
{
$heroId = $_GET['heroId'];
}
$rating = 0;
if (isset($_POST['rating']))
{
$rating = $_POST['rating'];
}
$Reviewdata = "";
if (isset($_POST['submitReview']))
{
$Reviewdata = $_POST['ReviewArea'];
}
if(( $Reviewdata  != "" ) || ($rating > 0))
{
   $sqlInsert = "INSERT INTO rating (rating,ratingDate,heroId, ratingReview) VALUES ($rating,NOW(),'$heroId','$Reviewdata')";


   if ($conn->query($sqlInsert) === TRUE) {
   } else {
      echo "Error: " . $sqlInsert . "<br>" . $conn->error;
   }
}

	?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="description" content="DC Heroes">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel='shortcut icon' type='image/x-icon' href='image/Marvel.ico' />
    <title>Marvel Heroes </title>
</head>

<body>

    <header id="header">
        <a href="index.php"><img id="HeaderLogo" src="image/MarvelLogo.jpg"></a>
    </header>

    <div id="main-container">

        <div id="main-left">
            <h1 id="teams">Teams</h1>
            <nav>
                <ul>
                    <?php
            $sql5 = "SELECT COUNT(*)  as total FROM `hero` WHERE teamId = $teamId";
			$result5 = $conn->query($sql5);
			if ($result5->num_rows > 0) {
			// output data of each row
		while($row5 = $result5->fetch_assoc()) {

            ?>
                    <h3 id="countHeroes">
                        <?php echo $row5['total'];?>
                    </h3>

                    <?php

            $sql = "SELECT * FROM team";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
			// output data of each row
		       while($row = $result->fetch_assoc()) {
			
			?>
                    <li><img id="teamlogo" src="image/logoavengers.png" alt="logo" /><a href="index.php?teamId=<?php  echo $row['teamId']; ?>">
                            <?php echo $row['teamName'];?><a></li>

                    <?php
            	}
			} 
            
				}
			} 
			?>
                </ul>
            </nav>
        </div>

        <div class="main-center">
            <?php
             if($teamId > 0) {

                $sql2 = "SELECT * FROM `hero` WHERE `teamId` = ".$teamId;
             

			$result2 = $conn->query($sql2);
			if ($result2->num_rows > 0) {
			// output data of each row
		while($row2 = $result2->fetch_assoc()) {
			
			?>
            <div id="Character">
                <img id="image" src="image/<?php echo $row2['heroImage'];?>">
                <h3 id="Title">
                    <?php echo $row2['heroName'];?>
                </h3>
                <p id="Description">
                    <?php echo $row2['heroDescription'];?>
                </p>
                <a id="linkCharacter" href="index.php?teamId=<?php  echo $teamId; ?>&heroId=<?php  echo $row2['heroId']; ?>">More
                    info</a>
            </div>
            <?php
				}
            }
            }
			?>
        </div>

        <div id="main-right">
            <div id="topBackground">
                <?php
                if($heroId > 0) {

                    $sql3 = "SELECT * FROM `hero` WHERE `heroId` = ".$heroId;                

                $result3 = $conn->query($sql3);
                if ($result3->num_rows > 0) {
                // output data of each row
            while($row3 = $result3->fetch_assoc()) {
                
                ?>
                <img id="imageDetails" src="image/<?php echo $row3['heroImage'];?>">
            </div>
            <div id="textDetails">
                <h2 id="info">Info</h2>
                <p id="DescriptionDetails">
                    <?php echo $row3['heroDescription'];?>
                </p>
                <h2 id="info">Power</h2>
                <li id="Power">
                    <?php echo $row3['heroPower'];?>
                </li>
                <h2 id="info">Review</h2>
                <form method="post" action="">
                    Wat vind je er van?
                    <br>Slecht<input type=radio value=1 id=rating name=rating>
                    <input type=radio value=2 id=rating name=rating>
                    <input type=radio value=3 id=rating name=rating>
                    <input type=radio value=4 id=rating name=rating>
                    <input type=radio value=5 id=rating name=rating>Goed<br><br>
                    <textarea id="ReviewArea" name="ReviewArea"></textarea>
                    <button id="submitReview" type="submitReview" name="submitReview">Submit</button>
                </form>
                <h2 id="info">Reviews:</h2>
                <?php
                $Reviews = "SELECT * FROM rating WHERE heroid = $heroId ORDER BY `ratingDate` DESC";
                $result4 = $conn->query($Reviews);
                if ($result4->num_rows > 0) {
                // output data of each row
            while($row4 = $result4->fetch_assoc()) {
			
			?>
                <div id="Date">
                    <?php echo  $row4['ratingDate'];?>
                    <?php
                      if( $row4['rating'] > 0 )
                      {
                    ?>
                    <img id="ratingimg" src=image/<?php echo $row4['rating'];?>.png>
                    <?php
                      }
                    ?>
                </div>

                <div id="Review">
                    <?php echo  $row4['ratingReview'];?>
                </div>
                <hr>
                <?php
				}
			} 
                ?>
            </div>

            <?php
				}
            }
            }
			?>

        </div>
    </div>
    <div class="footer">
        <p>Roc Ter AA</p>
    </div>
</body>

</html>