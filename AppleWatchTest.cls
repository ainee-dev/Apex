@isTest
private class AppleWatchTest { 

	@isTest static void createOpp() {
		Opportunity opp	= new Opportunity();
		opp.Name 		= 'The Simpsons';
        opp.StageName 	= 'Prospecting';
        opp.CloseDate 	= Date.today();
		insert opp;
	}

}
