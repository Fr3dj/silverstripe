<?php 

class ArticlePage extends Page {
	//prevent the page to be added to the root of the website
	private static $can_be_root = false;
	
	//Add new field to the CMS page creation
	private static $db = array (
		'Date' => 'Date', //Publication date of the page
    	'Teaser' => 'Text', //Short description of the page
    	'Author' => 'Varchar' //who created the page
	);
	
	//Add new entry to be use in the page creation
	private static $has_one = array (
        'Logo' => 'Image', 
        'ReportFile' => 'File'
    );
	
	//method that exposes the API for updating the CMS interface for this page
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		//Add fields to the man=in apge creator
		$fields->addFieldToTab('Root.Main', DateField::create('Date','Date of article'),'Content');   
    	$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'),'Content');
    	$fields->addFieldToTab('Root.Main', TextField::create('Author','Author of article'),'Content');
		
		//add new tab and new functionalities to main creator page
		$fields->addFieldToTab('Root.Attachments', UploadField::create('Logo'));
        $fields->addFieldToTab('Root.Attachments', $ReportFile = UploadField::create(
          'ReportFile',
          'Annual Report, optional (PDF only)'
        ));

		//force upload file as PDF and save them in Documents/Annual Reports
        $ReportFile
		->setFolderName('Documents/Annual Reports')
		->getValidator()->setAllowedExtensions(array('pdf'));
		 
		return $fields;
	}

	//Function to return the latest 8 reports
	public function LatestReports($count = 8) {
    return ArticlePage::get()
                 ->sort('Created', 'DESC')
                 ->limit($count);
  	}
	
}

class ArticlePage_Controller extends Page_Controller {

}