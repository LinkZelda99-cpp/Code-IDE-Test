fun main() {
  val values = listOf(3, 1, 4, 1, 5, 9)
  println("Hello from Kotlin")
  println(values.filter { it % 2 == 1 }.sum())
}
