//CSD320 Tyler O'Riley 03/27/2023 Assignment 2
//Calculating amount of energy needed to heat water from one temperature to another.

import java.util.Scanner;

public class Wenergy {
    public static void main(String[] args) {
        
        //Declaring variables
        float Wkilo;
        float InTemp;
        float FinTemp;
        float Energy;

        Scanner input = new Scanner(System.in);

        //Assigning variable values through User input
        System.out.print("Enter the initial temperature in celcius: ");
        InTemp = input.nextFloat();
        System.out.print("Enter the final temperature in celcius: ");
        FinTemp = input.nextFloat();
        System.out.print("Enter the amount of water in kilograms: ");
        Wkilo = input.nextFloat();

        //Equation to calculate energy
        Energy = (Wkilo * (FinTemp - InTemp)) * 4184;

        //Final result
        System.out.println("The amount of energy needed to heat the water is " + Energy);

    }
}