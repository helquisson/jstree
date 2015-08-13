<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jstree/3.0.9/jstree.min.js"></script>
<script>
$(function() {
  $('#container').jstree({
    'core' : {
      'data' : {
        "url" : "data.php",
        "dataType" : "html"
      }
    },
    "plugins" : ["search"]
  });

  /* Use search without button */
  var to = false;
  $('#q').keyup(function () {
    if(to) { clearTimeout(to); }
    to = setTimeout(function () {
      var v = $('#q').val();
      $('#container').jstree(true).search(v);
    }, 250);
  });

  /* Use search with button */
  /* $("#s").submit(function(e) {
	  e.preventDefault();
	  $("#container").jstree(true).search($("#q").val());
	}); */
	
  $("#container").bind("select_node.jstree", function(e, data) {
	  window.location.href = data.node.a_attr.href;
	});
});
</script>
</body>
</html>