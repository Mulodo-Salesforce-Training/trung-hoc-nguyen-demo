public class CollectionExample {
public void printList() {
List<Integer> li = new List<Integer>();

li.add(1);
li.add(5);
li.add(3);
li.add(1);
li.add(2);
li.add(4);
li.add(6);
li.add(4);
li.add(8);
li.add(7);

System.debug('========================List li:'+li);
// ========================List li:(1, 5, 3, 1, 2, 4, 6, 4, 8, 7)

for(Integer val: li) {
System.debug('---------------------Value: '+val);
}
}

public void printSet() {
Set<Integer> se = new Set<Integer>();

se.add(1);
se.add(5);
se.add(3);
se.add(1);
se.add(2);
se.add(4);
se.add(6);
se.add(4);
se.add(8);
se.add(7);

System.debug('========================Set se:'+se);
// ========================List li:(1, 5, 3, 1, 2, 4, 6, 4, 8, 7)
//========================Set se:{1, 2, 3, 4, 5, 6, 7, 8}

for(Integer val: se) {
System.debug('---------------------Value: '+val);
}
}

public void printMap() {
Map<Integer, String> ma = new Map<Integer, String>();

ma.put(1, 'Anu');
ma.put(5, 'Ash');
ma.put(3, 'Ven');
ma.put(1, 'Swa');
ma.put(2, 'Sar');
ma.put(4, 'Div');
ma.put(6, 'Dee');
ma.put(4, 'Sac');
ma.put(8, 'Swa');
ma.put(7, 'She');

System.debug('========================Map ma:'+ma);
// ========================List li:(1, 5, 3, 1, 2, 4, 6, 4, 8, 7)
// ========================Set se:{1, 2, 3, 4, 5, 6, 7, 8}
// ========================Map ma:{1=Swa, 2=Sar, 3=Ven, 4=Sac, 5=Ash, 6=Dee, 7=She, 8=Swa}

Set<Integer> kSet = ma.keySet();
// ==============kSet:{1, 2, 3, 4, 5, 6, 7, 8}

System.debug('==============kSet:'+kSet);

for(Integer key: kSet) {
System.debug('---------------------Key: '+key);
System.debug('---------------------Value: '+ma.get(key));
}

List<String> valList = ma.values();

for(String val: valList) {
System.debug('---------------------Value: '+val);
}

}
}