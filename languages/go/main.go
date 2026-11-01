package main

import "fmt"

func main() {
  values := []int{3, 1, 4, 1, 5, 9}
  total := 0
  for _, value := range values { total += value }
  fmt.Println("Hello from Go")
  fmt.Println("sum:", total)
}
