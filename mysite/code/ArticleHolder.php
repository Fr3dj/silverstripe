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
	
	//Function to return the latest 8 reports
	public function LatestReports($count = 8) {
    return ArticlePage::get()
                 ->sort('Created', 'DESC')
                 ->limit($count);
  	}
}

class ArticleHolder_Controller extends Page_Controller {

}

