<div class="blog-header">
<h1 class="blog-title">$title</h1>
<p class="lead blog-description">$Teaser</p>
</div>

<!-- BEGIN MAIN CONTENT -->
<div class="row">
<div class="col-sm-8 blog-main">			
<!-- loop through every sub pages -->
<% loop $Children %>
	<div class="blog-post anchor">
		<h2 class="blog-post-title"><a href="$link" target="_parent" title="$title">$title</a></h2>
		<!-- Display attachment if the subpage has one -->
		<% if $ReportFile %>
			<p><a class="pdf" target="_blank" href="$ReportFile.URL"> Download this report ($ReportFile.Extension, $ReportFile.Size)</a></p>
		<% end_if %>
		
		<!-- Display logo if the subpage has one -->
		<% with $Logo.SetWidth(300) %>
			<img class="my-custom-class" src="$URL" alt="" width="$Width" height="$Height" />
		<% end_with %>
	</div> 
	<hr class="featurette-divider">
<% end_loop %>
	
				
<!-- BEGIN PAGINATION -->
<!--div class="pagination">
	<ul id="previous">
		<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
	</ul>
	<ul>
		<li class="active"><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
	</ul>
	<ul id="next">
		<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
	</ul>
</div-->
<!-- END PAGINATION -->						

</div><!-- /.blog-main -->

<!-- BEGIN SIDEBAR -->
<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
	<div class="sidebar-module sidebar-module-inset">
		<h4>Previous Reports</h4>
		<ol class="list-unstyled">
			<% loop $LatestReports(8) %>
				<a href="$link" title="$title">$title</a><br />
			<% end_loop %>
		</ol>
	</div>
	
		
	<!-- h2 class="section-title">Archives</h2>
	<div id="accordion" class="panel-group blog-accordion">
		<div class="panel">
			<div class="panel-heading">
				<div class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="">
						<i class="fa fa-chevron-right"></i> 2014 (15)
					</a>
				</div>
			</div>
			<div id="collapseOne" class="panel-collapse collapse in">
				<div class="panel-body">
					<ul>
						<li><a href="#">July (3)</a></li>
						<li><a href="#">June (4)</a></li>
						<li><a href="#">May (1)</a></li>
						<li><a href="#">April (2)</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="panel">
			<div class="panel-heading">
				<div class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
						<i class="fa fa-chevron-right"></i> 2013 (6)
					</a>
				</div>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">
					<ul>
						<li><a href="#">May (1)</a></li>
						<li><a href="#">April (2)</a></li>
						<li><a href="#">March (1)</a></li>
						<li><a href="#">February (2)</a></li>
						<li><a href="#">January (1)</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="panel">
			<div class="panel-heading">
				<div class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
						<i class="fa fa-chevron-right"></i> 2012 (5)
					</a>
				</div>
			</div>
			<div id="collapseThree" class="panel-collapse collapse">
				<div class="panel-body">
					<ul>
						<li><a href="#">April (1)</a></li>
						<li><a href="#">March (1)</a></li>
						<li><a href="#">February (2)</a></li>
						<li><a href="#">January (1)</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div -->
</div><!-- /.blog-sidebar -->
<!-- END SIDEBAR -->

</div><!-- /.row -->
<!-- END MAIN CONTENT -->

