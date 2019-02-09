// Trigger creates a task if an opp is more than..
trigger appleWatchGold on Opportunity (after insert) {
	for (Opportunity opp : Trigger.new) {
		if (opp.amount > 50000) {
			Task t = new Task();
			t.Subject = 'appleWatchGold';
			t.Description = 'Send one ASAP!';
			t.Priority = 'High';
			t.WhatId = opp.Id;

			insert t;
		}
	}
}
