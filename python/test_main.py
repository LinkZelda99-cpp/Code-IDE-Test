import unittest

from main import calculate_statistics


class CalculateStatisticsTests(unittest.TestCase):
    def test_basic_statistics(self):
        result = calculate_statistics([3, 7, 2, 9, 4])
        self.assertEqual(result["count"], 5)
        self.assertEqual(result["minimum"], 2)
        self.assertEqual(result["maximum"], 9)
        self.assertEqual(result["average"], 5)

    def test_decimal_values(self):
        result = calculate_statistics([0.5, 1.0, 1.5])
        self.assertEqual(result["average"], 1.0)

    def test_single_value(self):
        result = calculate_statistics([12])
        self.assertEqual(result["count"], 1)
        self.assertEqual(result["minimum"], 12)
        self.assertEqual(result["maximum"], 12)
        self.assertEqual(result["average"], 12)

    def test_empty_input_raises_value_error(self):
        with self.assertRaisesRegex(ValueError, "must not be empty"):
            calculate_statistics([])


if __name__ == "__main__":
    unittest.main()
