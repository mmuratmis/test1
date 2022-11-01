//static variableye deger atama, class ismini basa yaziyorsun,sonra nokta koyup variable ismini yaziyorsun;
string test = SampleClass.SampleStaticStringVariable = 'This is static variable.';
system.debug(test);
//statik method cagirma. Methodu cagirirken ilk class ismini yaziyorsun, sonra method ismini yaziyorsun.sonuna parantez koyuyorsun; parametrede = koyup deger atiyordun.
SampleClass.SampleStaticMethod();

//non static variableye deger atama;
SampleClass test2 = new SampleClass();
test2.SampleString = 'This is non static variable';
system.debug(test2.SampleString);

//non static method cagirma, normal new instance olusturup ilk ogrendigin cagirma yontemini kullaniyorsun;
SampleClass test3 = new SampleClass();
test3.SampleMethod();

