<!-- BEGIN MAIN CONTENT -->
<div class="row">
<div class="main col-sm-8">

<div class="blog-header">
	<h1>$title</h1>
	<p class="lead blog-description">$Teaser. Published on $Date.Nice, by $Author</p>
</div>



<div class="post-content">
$content
<% if $ReportFile %>
	<div class="row">
	<div class="col-sm-12"><a class="btn btn-warning btn-block" href="$ReportFile.URL"> Download this report ($ReportFile.Extension, $ReportFile.Size)</a>
	</div>
	</div>
<% end_if %>	
</div>

<div class="share-wraper col-sm-12 clearfix">
	<a class="print-button" href="javascript:window.print();">
		<i class="fa fa-print"></i>
	</a>
</div>
	
	
</div><!-- /.blog-main -->

<!-- BEGIN SIDEBAR -->
<div class="col-sm-3 col-sm-offset-1 blog-sidebar">
	
	<h2 class="section-title">Categories</h2>
	<ul class="categories">
		<li><a href="#">Business <span>(2)</span></a></li>
		<li><a href="#">Commercial <span>(1)</span></a></li>
		<li><a href="#">Land <span>(3)</span></a></li>
		<li><a href="#">Loans <span>(2)</span></a></li>
		<li><a href="#">News and Updates <span>(6)</span></a></li>
		<li><a href="#">Properties for Sale <span>(1)</span></a></li>
		<li><a href="#">Real Estate <span>(1)</span></a></li>
	</ul>
	
	<!-- BEGIN ARCHIVES ACCORDION -->
	<h2 class="section-title">Archives</h2>
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
	</div>
	</div><!-- /.blog-sidebar -->
<!-- END SIDEBAR -->

</div><!-- /.row -->
<!-- END MAIN CONTENT -->
