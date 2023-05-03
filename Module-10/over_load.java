//CSD320 Tyler O'Riley 05/02/2023 Assignment 10
//Java program to produce four overload methods with averaged results.

import java.io.*;
import java.util.*;

public class over_load {
    public static void main(String[] args) { // Array methods including each custom set
        short[] shortArr = new short[]{1, 2, 3, 4, 5};
        int[] intArr = new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        long[] longArr = new long[]{1, 2, 3, 4};
        double[] doubleArr = new double[]{1, 2, 3, 4, 5, 6, 7};

        System.out.println("Short Array: " + average(shortArr));
        System.out.println("Int Array: " + average(intArr));
        System.out.println("Long Array: " + average(longArr));
        System.out.println("Double Array: " + average(doubleArr));
        
    }

    public static short average(short[] array) { //Short Array calculations
        short average = 0;
        System.out.println(Arrays.toString(array));
        for(int idx = 0; idx < array.length; idx++)
        {
            average += array[idx];
        }
        return (short)(average/array.length);
    }

    public static int average(int[] array) { //Int Array calculations
            int average = 0;
        System.out.println(Arrays.toString(array));
        for(int idx = 0; idx < array.length; idx++)
        {
            average += array[idx];
        }
        return (int)(average/array.length);
    }

    public static long average(long[] array) { //Long Array calculations
            long average = 0;
        System.out.println(Arrays.toString(array));
        for(int idx = 0; idx < array.length; idx++)
        {
            average += array[idx];
        }
        return (long)(average/array.length);
    }

    public static double average(double[] array){ //Double Array calculations
            double average = 0;
        System.out.println(Arrays.toString(array));
        for(int idx = 0; idx < array.length; idx++)
        {
            average += array[idx];
        }
        return (double)(average/array.length);
    }

}