//CSD320 Tyler O'Riley 04/05/2023 Assignment 4
//Program to take two different user inputs, compare them, and return if any entered strings match the other string as a substring


import java.util.Scanner;

class SubstringFinder {
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    System.out.println("Input the first string:"); //first and second inputs for both strings to be compared
    String firstString = input.nextLine();
    System.out.println("Input the second string:");
    String secondString = input.nextLine();

    if(firstString.indexOf(secondString) != -1){ //if statement for if the second input is a match within the first
      System.out.println(secondString + " is a substring of "+ firstString);
    }
    if(secondString.indexOf(firstString) != -1) { //if statement for if the first input is a match within the second 
      System.out.println(firstString + " is a substring of "+ secondString);
    }
    if( firstString.indexOf(secondString) == -1 && secondString.indexOf(firstString) == -1){ //if statement for when neither string entries match or have too many entries
      System.out.println("Neither strings are substrings of one another.");
    }

  }
}