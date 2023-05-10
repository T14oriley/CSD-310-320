//CSD320 Tyler O'Riley 05/10/2023 Assignment 11
//Java program to locate variable locations within arrays



import java.util.Arrays;
import java.lang.*;

public class locate_integer {
  public static void main(String[] args) { //Array variable assignment
    double[][] doubleArray = { { 1.3, -0.2, 3.7 },
        { .67, -8.21, -8.25 },
        { 4.5, .25, 6.9 } };

    int[][] intArray = { { 1, 2, -3 },
        { 7, 8, 9, 10 },
        { 4, 5 } };

    System.out.println("LARGEST DOUBLE: " + Arrays.toString(locateLargest(doubleArray))); //Array methods to located variables
    System.out.println("LARGEST INTEGER : " + Arrays.toString(locateLargest(intArray)));
    System.out.println("SMALLEST DOUBLE: " + Arrays.toString(locateSmallest(doubleArray)));
    System.out.println("SMALLEST INTEGER: " + Arrays.toString(locateSmallest(intArray)));

  }

  public static int[] locateLargest(double[][] arrayParam) { //method to locate largest double integer
    double largestNum = -Double.MAX_VALUE;
    int[] locationArray = new int[2];
    for (int col = 0; col < arrayParam.length; col++) {
      for (int row = 0; row < arrayParam[col].length; row++) {
        if (arrayParam[col][row] > largestNum) {
          largestNum = arrayParam[col][row];
          locationArray[0] = col;
          locationArray[1] = row;
        }
      }
    }
    return locationArray;
  }

  public static int[] locateLargest(int[][] arrayParam) { //method to locate largest integer
    int largestNum = Integer.MIN_VALUE;
    int[] locationArray = new int[2];
    for (int col = 0; col < arrayParam.length; col++) {
      for (int row = 0; row < arrayParam[col].length; row++) {
        if (arrayParam[col][row] > largestNum) {
          largestNum = arrayParam[col][row];
          locationArray[0] = col;
          locationArray[1] = row;
        }
      }
    }
    return locationArray;
  }

  public static int[] locateSmallest(double[][] arrayParam) { //method to locate smallest double integer
    double smallestNum = Double.MAX_VALUE;
    int[] locationArray = new int[2];
    for (int col = 0; col < arrayParam.length; col++) {
      for (int row = 0; row < arrayParam[col].length; row++) {
        if (arrayParam[col][row] < smallestNum) {
          smallestNum = arrayParam[col][row];
          locationArray[0] = col;
          locationArray[1] = row;
        }
      }
    }
    return locationArray;
  }

  public static int[] locateSmallest(int[][] arrayParam) { //method to locate smallest integer
    int smallestNum = Integer.MAX_VALUE;
    int[] locationArray = new int[2];
    for (int col = 0; col < arrayParam.length; col++) {
      for (int row = 0; row < arrayParam[col].length; row++) {
        if (arrayParam[col][row] < smallestNum) {
          smallestNum = arrayParam[col][row];
          locationArray[0] = col;
          locationArray[1] = row;
        }
      }
    }
    return locationArray;
  }

}