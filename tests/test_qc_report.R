library(testthat)

test_that('qc_report can catch failing FASTA sequences?', {
  seq <- c( a= 'ATATAT', b= paste(rep('N', 60), collapse = ''), c= paste(rep('A', 90), collapse = ''))
  result <- qc_report(seq)
  expect_false(result$pass[result$name =='a'])
  expect_false(result$pass[result$name =='b'])
  expect_true(result$pass[result$name =='c'])
})
