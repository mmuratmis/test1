List<string> myColor = new List<string>{'blue', 'red', 'green', 'white', 'black'};
system.debug(myColor);
public integer a = mycolor.size();
system.debug(a);
public boolean z = mycolor.contains('red');
system.debug(z);
public string b = mycolor.get(a - 1);
system.debug(b);
string c = mycolor[3].toUpperCase();
system.debug(c);


List<string> colorCodeList = new List<string>{'0000FF', '#008000', 'FFFFFF', 'C0C0C0'};
system.debug(colorCodeList);

boolean areTwoListEqual = mycolor.equals(colorCodeList);
system.debug(areTwoListEqual);

List<string> mergeList = new List<string>();
mergeList.addAll(mycolor);
mergeList.addAll(colorCodeList);
system.debug(mergeList);
