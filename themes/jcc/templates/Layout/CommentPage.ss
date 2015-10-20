<div class="blog-header">
<h1 class="blog-title">$title</h1>
<p class="lead blog-description">$Teaser</p>
</div>

<!-- BEGIN MAIN CONTENT -->
<div class="row">
<div class="col-sm-8 blog-main">

<div class="comments">

	<% loop $Comments %>
		<img src="$ThemeDir/images/comment-man.jpg" width="40px" alt="" />
		<div class="comment">								
			<h3>$Name<small> $Created.Format('j F, Y')</small></h3>
			<p>$Comment</p>
		</div>
	<% end_loop %>

	
	<div class="comments-form">
		<h3>Leave a Reply</h3>
		<p>Your email address will no be published. Required fields are marked*</p>
		$CommentForm
	</div>
</div>	

</div><!-- /.blog-main -->

<!-- BEGIN SIDEBAR -->
<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
		
	<div class="sidebar-module">
		<h4>Print</h4>
		<a href="javascript:window.print();">Print this page</a>
	</div>

	</div><!-- /.blog-sidebar -->
<!-- END SIDEBAR -->

</div><!-- /.row -->
<!-- END MAIN CONTENT -->
