




import java.util.Scanner;

public class Wmass {
    public static void main(String[] args) {
        
        System.out.println("Hello World");
        System.out.println(3);
        System.out.println(3 + 3);
        String name = "John";
        System.out.println(name);
        int myNum = 15;
        System.out.println(myNum);
        myNum = 5;
        float myFloatNum = 5.99f;
        char myLetter = 'D';
        boolean myBool = true;
        String myText = "Hello";
        int x = 5, y = 6, z = 50;
        x = y = z = 50;
        System.out.println(x + y + z);

        Scanner myObj = new Scanner(System.in);  // Create a Scanner object
        System.out.println("Enter username");

        String userName = myObj.nextLine();  // Read user input
        System.out.println("Username is: " + userName);  // Output user input
        // This is a comment
        /* The code below will print the words Hello World
        to the screen, and it is amazing */
    }
  }