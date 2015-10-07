<?php

class ArticleHolder extends Page {

	private static $allowed_children = array ('ArticlePage');
	private static $db = array (
    	'Teaser' => 'Text', //Short description of the page
	);
	
	//method that exposes the API for updating the CMS interface for this page
	public function getCMSFields() {
		$fields = parent::getCMSFields();   
    	$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'),'Content');
		
		return $fields;
	}

}

class ArticleHolder_Controller extends Page_Controller {

}

