<?php 

class CommentPage extends Page {
	
	//Create a has_many relashionship to load any comments on this page
	private static $has_many = array (
		'Comments' => 'SiteComment'
	);
	
	//Add new field to the CMS page creation
	private static $db = array (
    	'Teaser' => 'Text', //Short description of the page
	);
	
	//method that exposes the API for updating the CMS interface for this page
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		//Add fields to the man=in apge creator  
    	$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'),'Content');
		 
		return $fields;
	}
	
}

class CommentPage_Controller extends Page_Controller {
	
	
	private static $allowed_actions = array (
		'CommentForm',
	);
	
	public function CommentForm() {
		$form = Form::create(
			$this,
			__FUNCTION__,
			//Create the fields used in the form
			FieldList::create(
				TextField::create('Name',''),
				EmailField::create('Email',''),
				TextareaField::create('Comment','')
			),
			
			//Create the button to handle the form
			FieldList::create(
				FormAction::create('handleComment','Post Comment')
					->setUseButtonTag(true)
					->addExtraClass('btn btn-warning')
			),
			
			//Make the fields below mandatory
			RequiredFields::create('Name','Email','Comment')
		)->addExtraClass('form-style');
		
			//Add css class to the fields
			foreach($form->Fields() as $field) {
				$field->addExtraClass('form-control form-group')
					->setAttribute('placeholder', $field->getName().'*');
			}
		
		//Load the data from the seesion created below	
		$data = Session::get("FormData.{$form->getName()}.data");
		
		return $data ? $form->loadDataFrom($data) : $form;
	}
	
	public function handleComment($data, $form) {
		//Create a session object to repopulate the form in case something goes wrong
		Session::set("FormData.{$form->getName()}.data", $data);
		
		$existing = $this->Comments()->filter(array(
			'Comment' => $data['Comment']
		));	
		
		//Basic validation to validate the comment field.
		if($existing->exists() && strlen($data['Comment']) > 20) {
			$form->sessionMessage('That comment already exists! Spammer!','bad');
			return $this->redirectBack();
		}
		
		//Create an object SiteComment which will return the comments
		$comment = SiteComment::create();
		$comment->CommentPageID = $this->ID;  //CommentPage is the name of this Class
		$form->saveInto($comment);
		$comment->write();
		
		//Clear the session after successfully submitting the form.
		Session::clear("FormData.{$form->getName()}.data");
		$form->sessionMessage('Thanks for your comment','good');
		return $this->redirectBack();
	}
	
}





