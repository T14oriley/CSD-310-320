//CSD320 Tyler O'Riley 04/23/2023 Assignment 8
//Java program to post service charges based on parameters

public class Service_fees {
    static double serviceCharge = 40.00;
    public static void main(String[] args) {
        System.out.println("Your charge today is: "+yearlyService());
        System.out.println("Your charge today is: "+yearlyService());
        //ONE PARAM
        
        System.out.println("Your charge today is: "+yearlyService(30.00));
        System.out.println("Your charge today is: "+yearlyService(24.30));
        //TWO PARAM
        System.out.println("Your charge today is: "+yearlyService(20.00, 15.65));
        System.out.println("Your charge today is: "+yearlyService(20.00, 13.44));
        //THREE PARAM
        System.out.println("Your charge today is: "+yearlyService(20.00, 50.00, 23.00));
        System.out.println("Your charge today is: "+yearlyService(20, 50, 30));
        
    }
    
    public static double yearlyService() {
        return serviceCharge;
    }
    public static double yearlyService(double oilFee) {
        return serviceCharge + oilFee;
    }
    public static double yearlyService(double oilFee, double tireCharge) {
        return serviceCharge+oilFee+tireCharge;
    }
    public static double yearlyService(double oilFee, double tireCharge, double couponAmount) {
        return (serviceCharge+oilFee+tireCharge) - couponAmount;
    }
}