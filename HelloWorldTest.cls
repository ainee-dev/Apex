@isTest
private class HelloWorldTest { 

	@isTest static void updateLead() {
		Lead myLead			= new Lead();
		myLead.FirstName 	= 'Ainee';
		myLead.LastName  	= 'Guevara';
		myLead.Company 		= 'Salesforce';
		insert myLead;

		myLead.Company 		= 'PluralSight';
		update myLead;
	}

}
