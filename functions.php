<?php

/**
 * 
 * @return mysqli
 */
function connectBD() {
	$mysqli = new mysqli ( "localhost", "root", "admin123", "jstree" );
	return $mysqli;
}

/**
 * Get Sub Category
 * @param cotegory $id
 * @return string
 */
function getSubCategory($id) {
	$mysqli = connectBD();
	
	$sub = '';
	
	$query = "SELECT * FROM categories WHERE id_parent = {$id}";
	
	if ($result = $mysqli->query ( $query )) {
		$sub .= '<ul>';
		while ( $obj = $result->fetch_object () ) {
			
			$article = (getArticles ( $obj->id )) ? getArticles ( $obj->id ) : '';
			
			$child = (getSubCategory ( $obj->id )) ? getSubCategory ( $obj->id ) : '';
			
			$sub .= '<li>' . $obj->name . '' . $child . $article . '</li>';
		}
		$sub .= '</ul>';
	}
	
	return $sub;
}

/**
 *
 * @param category $id        	
 */
function getArticles($id) {
	$articles = '';
	
	$mysqli = connectBD();
	
	$query = "SELECT * FROM posts WHERE id_category = {$id}";
	
	if ($result = $mysqli->query ( $query )) {
		$articles .= '<ul>';
		while ( $obj = $result->fetch_object () ) {
			$articles .= '<li><a class="article" href="article.php?id='.$obj->id.'">' . $obj->title . '</a></li>';
		}
		$articles .= '</ul>';
	}
	
	return $articles;
}

/**
 * 
 * @param article $id
 */
function viewArticle($id) {
	
	$mysqli = connectBD();
	
	$query = "SELECT * FROM posts WHERE id = {$id}";
	
	if($result = $mysqli->query($query)) {
		$obj = $result->fetch_object();
		
		return $obj;
	} else {
		return null;
	}
}
