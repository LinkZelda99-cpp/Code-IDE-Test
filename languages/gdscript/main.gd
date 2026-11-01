extends SceneTree
func _initialize() -> void:
  var values: Array[int] = [3, 1, 4, 1, 5, 9]
  print("Hello from GDScript")
  print("sum: ", values.reduce(func(a, b): return a + b, 0))
  quit()
