@isTest
private class AppleWatchGold { 

	@isTest static void createOpp() {
		Opportunity opp	= new Opportunity();
		opp.Name 		= 'The Simpsons';
        opp.StageName 	= 'Prospecting';
        opp.CloseDate 	= Date.today();
        opp.Amount 		= 55000;
		insert opp;
	}

}
