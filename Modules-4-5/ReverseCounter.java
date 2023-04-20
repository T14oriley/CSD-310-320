//CSD320 Tyler O'Riley 04/05/2023 Assignment 5
//Program to cycle through division equations starting with 3 - 99, then reversing to display the same division from 99 - 3, then ending the while loop.

//Import tool for decimal format
import java.text.DecimalFormat;

class ReverseCounter {
  public static void main(String[] args) {
    double math = 3;
    //setting boolean variable to false in preparation for while loop
    boolean reverseOrder = false;
    //implementation of decimal format tool to display decimal digits if they occur within 0.00000, otherwise, the placeholder is left blank
    DecimalFormat df = new DecimalFormat("#.#####");
    while (math >= 3 && math <= 99) {
      System.out.printf(df.format(1 / math) + ", "); //df.format to display each division problem with appropriate decimals
      if (reverseOrder) { //while loop detects false until reverseOrder is set to true
        math--;
        if (math == 3) {
          break;
        }
      } else {
        math++;
        if (math == 99) { //if statement to initiate reverse order
          reverseOrder = true;
          System.out.printf("\nReverse Time\n");
        }
      }
    }
  }
}