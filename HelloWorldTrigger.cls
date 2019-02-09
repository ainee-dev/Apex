/* Write a trigger that sets these lead fiels
First Name: Hello
Last Name: World
*/
Trigger updateLeadName on Lead (before update) {
	for (Lead l : Trigger.new) {
		l.firstName = 'Hello';
		l.lastName  = 'World';
	}
}
