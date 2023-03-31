@isTest
public class DogApiCalloutTest {
    @IsTest
    static void getBreedsTest(){
        Test.setMock(HttpCalloutMock.class, new DogApiMockCallGenerator());
        Test.startTest();
        DogApiCallout.getBreeds();
        Test.stopTest();
    }

}