# out1 <- compare2qualvars(
#   data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = "am",
#   spacer = " "
# )
# out2 <- compare2qualvars(
#   data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = "am",
#   spacer = " ", singleline = TRUE
# )
# saveRDS(list(out1=out1, out2=out2),file = 'tests/testthat/compare2qualvars_out.rda')


test_that("compare2qualvars() with defaults and options set, plus tests for errors", {
  expected <- readRDS('compare2qualvars_out.rda')
  
  # expect_equal(compare2qualvars(
  #   data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = "am",
  #   spacer = " "
  # ), expected[[1]])
  # expect_equal(compare2qualvars(
  #   data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = "am",
  #   spacer = " ", singleline = TRUE
  # ), expected[[2]])
  expect_error(compare2qualvars(
    data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = c("am","cyl"),
    spacer = " "
  ))
  expect_error(compare2qualvars(
    data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = c("am","cyl"),
    spacer = " "
  ))
  expect_error(compare2qualvars(
    data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = c("am","cyl"),
    spacer = " "
  ))
  expect_error(compare2qualvars(
    data = mtcars, dep_vars = c("gear", "cyl", "carb"), indep_var = c("am","cyl"),
    spacer = " "
  ))
})

