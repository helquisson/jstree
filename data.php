<?php require_once 'functions.php'; ?>
<?php

$mysqli = connectBD ();

$query = "SELECT * FROM categories WHERE id_parent = 0";

if ($result = $mysqli->query ( $query )) {
	?>
<ul>
	<?php
	while ( $obj = $result->fetch_object () ) {
		
		$article = (getArticles ( $obj->id )) ? getArticles ( $obj->id ) : '';
		
		$sub = (getSubCategory ( $obj->id )) ? getSubCategory ( $obj->id ) : '';
		
		echo '<li>' . $obj->name . '' . $sub . $article . '</li>';
	}
	?>
</ul>
<?php
}
?>