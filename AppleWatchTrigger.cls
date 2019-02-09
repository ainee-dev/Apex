// Write a trigger that creates a task for each new opportunity
trigger appleWatch on Opportunity (after insert) {
	for (Opportunity Opp : Trigger.new) {
	Task t = new task();
	t.Subject = 'Apple Watch Promo';
	t.Description = 'Send one ASAP!';
	t.Priority = 'High';
	t.WhatId = Opp.Id;
	insert t;
}
 }
