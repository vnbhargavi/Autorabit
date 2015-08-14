trigger testTrigger on Account (after insert) {

List<Contact> clist = new List<Contact>();
List<Account> acclist = new List<Account>();
for(Account a: trigger.New)
{
Contact c = new Contact();
c.Description  = 'Test';
c.AccountID = a.id;
c.lastname = 'test';
clist.add(c);
acclist.add(a);
//a.NumberOfEmployees = clist.size();
}
insert clist;

}