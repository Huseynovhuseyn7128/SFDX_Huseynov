public class ExampleDmLCallout {
    Public static void insertAccount(String name ){
        if (name!=null){
            Account acc = New Account(Name = name);
            insert acc;
            DogApiCallout.getBreeds();
        }
    }

}