import java.util.Scanner;

class RPSgame {
  public static void main(String[] args) {

    //Scanner function to assign players input to rock, paper, or scissors
    Scanner scan = new Scanner(System.in);
    System.out.printf("Choose\n (1) Rock \n (2) Paper \n (3) Scissors: ");
    int input = scan.nextInt();

    //While loop to filter wrong options until a correct value is chosen
    while (input < 1 || input > 3) {
      System.out.println("That choice isn't valid, please select a different one.");
      input = scan.nextInt();
    }
    scan.close();

    //Switch statement for which option the player chose
    switch (input) {
      case 1:
        System.out.println("You chose (" + input + ") Rock");
        break;
      case 2:
        System.out.println("You chose (" + input + ") Paper");
        break;
      case 3:
        System.out.println("You chose (" + input + ") Scissors");
        break;
    }
    
    //
    int comp = (int) (Math.random() * 3 + 1);
    switch (comp) {
      case 1:
        System.out.println("Computer chose (" + comp + ") Rock");
        switch (input) {
          case 1:
            System.out.println("Tie");
            break;
          case 2:
            System.out.println("Player Wins");
            break;
          case 3:
            System.out.println("Player Loss");
            break;
        }
        break;
      case 2:
        System.out.println("Computer chose (" + comp + ") Paper");
        switch (input) {
          case 1:
            System.out.println("Player Loss");
            break;
          case 2:
            System.out.println("Tie");
            break;
          case 3:
            System.out.println("Player Win");
            break;
        }
        break;
      case 3:
        System.out.println("Computer chose (" + comp + ") Scissors");
        switch (input) {
          case 1:
            System.out.println("Player Win");
            break;
          case 2:
            System.out.println("Player Loss");
            break;
          case 3:
            System.out.println("Tie");
            break;
        }
        break;
    }
  }
}