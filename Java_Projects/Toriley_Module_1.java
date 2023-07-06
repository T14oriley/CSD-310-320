//CSD320 Tyler O'Riley 03/21/2023 Assignment 1
//Introduction code to compare the difference between two differently written equations

public class Toriley_Module_1 {
    public static void main(String[] args) {
      System.out.println(4 * ( 1.0 - 1.0 / 3.0 + 1.0 / 5.0 - 1.0 / 7.0 + 1.0 / 9.0 - 1.0 / 11.0 + 1.0 / 13.0 ));
      System.out.println(4 * ( 1 - 1 / 3 + 1 / 5 - 1 / 7 + 1 / 9 - 1 / 11 + 1 / 13 ));
    }
  }

  //The difference between the two examples is how the syntax was constructed. The first equation adds on .0, allowing the integers to be ran as floats.
  //This allows the equation to produce an answer in the form of a float. Equation two uses all integers with no indication of a float being present.
  //The resulting value would be an integer which is rounded to 4 in this example. I believe the first option is better to obtain more direct results
  //rather than rounded to the next whole number in integer format.