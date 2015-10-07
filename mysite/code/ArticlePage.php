<?php 

class ArticlePage extends Page {
	//prevent the page to be added to the root of the website
	private static $can_be_root = false;
	
	
	private static $db = array (
		'Date' => 'Date', //Publication date of the page
    	'Teaser' => 'Text', //Short description of the page
    	'Author' => 'Varchar' //who created the page
	);
	
	//method that exposes the API for updating the CMS interface for this page
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', DateField::create('Date','Date of article'),'Content');   
    	$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'),'Content');
    	$fields->addFieldToTab('Root.Main', TextField::create('Author','Author of article'),'Content');
		
		return $fields;
	}
}

class ArticlePage_Controller extends Page_Controller {

}