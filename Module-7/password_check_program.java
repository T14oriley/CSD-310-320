//CSD320 Tyler O'Riley 04/23/2023 Assignment 7
//Java program to check for acceptable passwords
//Code architecture based on W3Resource example: https://www.w3resource.com/java-exercises/method/java-method-exercise-11.php

import java.util.Scanner;

public class password_check_program {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a password: ");
        String str = sc.next();
        if (password_check(str)) {
            System.out.println("This is a valid password");
        } 
        else {
            System.out.println("This is not a valid password");
        }
    }


    public static boolean password_check(String str) {
        if (str.length() < 8){
            return false;
        } 

        // integer trackers for needed password criteria
        int number = 0;
        int upper = 0;
        int lower = 0;
        for (int i = 0; i < str.length(); i++) {
            char ch = str.charAt(i);
            if (U_case(ch)){
                upper++;
            } 
            else if (L_case(ch)){
                lower++;
            } 
            else if (numeric(ch)){
                number++;
            } 
            else {
                return false;
            } 
        }
        if (number <= 0 || upper <= 0 || lower <= 0){ //if expression to ensure all three criteria are present
            return false;
        }
        else{
            return true;
        }
    }

    public static boolean numeric(char ch){ //boolean expression to check if numbers present
        return (Character.isDigit(ch));
    }

    public static boolean U_case(char ch){ //boolean expression to check if upper case is present
        if (Character.isUpperCase(ch)){
            return (true);
        }
        else{
            return (false);
        }
    }

    public static boolean L_case(char ch){ //boolean expression to check if lower case present
        return (ch >= 'a' && ch <= 'z');
    }
}