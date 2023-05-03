//CSD320 Tyler O'Riley 04/27/2023 Assignment 9
//Java program to fill an array and evaluate the data

public class create_Array {
    public static void main(String[] args){
        int highestNum = Integer.MIN_VALUE;
        int lowestNum = Integer.MAX_VALUE;
        int average = 0;
        int sum = 0;

        final int ARRAY_SIZE = 20; //Array creation syntax
        int ar[] = null;
        ar = new int[ARRAY_SIZE];

        for(int x = 0; x < ar.length; x++){ //Array assignment syntax
            ar[x] = x;
        }

        for(int idx = 0; idx < ar.length; idx++) { //Evaluation for loop for each condition
            sum += ar[idx];
            if(ar[idx] < lowestNum)
            {
                lowestNum = ar[idx];
            }
            if(ar[idx] > highestNum){
                highestNum = ar[idx];
            }
        }
        average = (int)sum/20;
        
        System.out.print("Array Values: "); //Result print statements
        for(int idy = 0; idy < ar.length; idy++)  {
            System.out.print(ar[idy] + " ");
        }
        System.out.println("\nHighest number: " + highestNum);
        System.out.println("Lowest number: " + lowestNum);
        System.out.println("Average: " + average);
        System.out.println("Sum: " + sum);
    }
}