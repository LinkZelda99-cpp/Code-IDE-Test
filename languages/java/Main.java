import java.util.List;

public class Main {
  public static void main(String[] args) {
    var values = List.of(3, 1, 4, 1, 5, 9);
    System.out.println("Hello from Java");
    System.out.println(values.stream().mapToInt(Integer::intValue).sum());
  }
}
