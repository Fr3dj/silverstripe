<?php

class SiteComment extends DataObject {
	
	private static $db = array (
		'Name' => 'Varchar',
		'Email' => 'Varchar',
		'Comment' => 'Text'
	);
	
	private static $has_one = array (
		'CommentPage' => 'CommentPage'
	);
	
}