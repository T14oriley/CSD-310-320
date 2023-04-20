//CSD320 Tyler O'Riley 04/15/2023 Assignment 6
//Program to take two different user inputs, compare them, and return if any entered strings match the other string as a substring


class PyramidLoop {
  public static void main(String[] args) {
    int rows = 7, k = 0, count = 0, count1 = 0;

    //First for loop for each row of variables
    for (int i = 1; i <= rows; ++i) {
      //Second loop to input spaces until variables are called
      for (int space = 1; space <= rows - i; ++space) {
        System.out.print("   ");
        ++count;
      }

      //While loop with conditionals to insert ascending and descending variables
      while (k != 2 * i - 1) {
        if (count <= rows - 1) {
          int num = (int) Math.pow(2, k);
          if(num > 10) {
            System.out.print(num+ " ");
          } else
          {
            System.out.print(" " +num+ " ");
          }
          ++count;
        } else {
          ++count1;
          int num = (int) Math.pow(2, k - 2 * count1);
          if(num > 10) {
            System.out.print(num+ " ");
          } else
          {
            System.out.print(" " +num+ " ");
          }
        }
        ++k;
      }
      count1 = count = k = 0;

      System.out.println();
    }
  }
}
    
