// Write a trigger that creates a case when an account is created
trigger DedupeReminder on Account (after insert) {
	for (Account acc : Trigger.new) {
		Case c 		= new Case();
		c.Subject 	= 'Dedupe this account';
		c.OwnerId 	= '0051U00000370AtQAI';
		c.AccountId = acc.Id;
		insert c;
	}
}
