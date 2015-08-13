<?php require_once 'functions.php'; ?>
<h1>Meu Artigo</h1>
<?php 
if(isset($_GET['id'])) {
	
	$id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
	
	$article = viewArticle($id);
	
	if($article) {
		echo $article->title;
		
		echo '<p>'.$article->content.'</p>';
	}
}
?>
<p><a href="/jstree"> &laquo; Back </a></p>