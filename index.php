<?php
include("connect.php");//database connection
?>

<?php

	$sql = "SELECT * FROM team";

	


    $teamId = 0;


    
    if (isset($_GET['teamId']))
{
    $teamId = $_GET['teamId'];

}
	
	?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="description" content="DC Heroes">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Marvel Heroes </title>
</head>

<body>

    <header id="header">
        <a href="index.php"><img id="HeaderLogo" src="image/MarvelLogo.jpg"></a>
    </header>

    <div id="main-container">

        <div id="main-left">
            <h1>Teams</h1>

            <?php
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
			// output data of each row
		while($row = $result->fetch_assoc()) {
			
			?>

            <p><a href="index.php?teamId=<?php  echo $row['teamId']; ?>"><?php echo $row['teamName'];?><a></p>


            <?php

				}
			} 
			?>

        </div>




        <div class="main-center">
			<h1>Center container</h1>
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
                <h3 id="Title"><?php echo $row2['heroName'];?></h3>
                <p id="Description"><?php echo $row2['heroDescription'];?></p>
                <a id="linkCharacter" href="index.php?teamId=<?php  echo $teamId; ?>&heroId=<?php  echo $row2['heroId']; ?>">More info</a>
			</div>
			<?php
				}
            }
            }
			?>
        </div>

        <div id="main-right">
            <h1>container</h1>

            <div id="details">blubi</div>
        </div>

    </div>

    <div class="footer">
        <p>Roc Ter AA</p>
    </div>

</body>

</html>