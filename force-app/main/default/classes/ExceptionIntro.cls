public class ExceptionIntro {  
      public static void show(string str){
        system.debug('Text '+ str);
   try {
        str = str.toUpperCase();   
    }  
    catch(Exception e){
        System.debug('Null pointer exception caught');
        system.debug(e.getCause());
        system.debug(e.getMessage());
    }
   
		system.debug('Text 2 '+ str);
   }
}