context("ml print methods")

skip_databricks_connect()
test_that("input_cols print correctly", {
  sc <- testthat_spark_connection()
  expect_output_file(
    print(ft_vector_assembler(sc, c("foo", "bar"), "features", uid = "va")),
    output_file("print/vector-assembler.txt")
  )
})
