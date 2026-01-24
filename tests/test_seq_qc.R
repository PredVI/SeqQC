library(testthat)

test_that('seq_qc can compute FASTAs ?', {
  seq <- c( a= 'ACGT', b='NNNNNNN', c= 'ATX', d='')
  result <- seq_qc(seq)

  expect_equal(result$length[result$name =='a'], 4)
  expect_equal(result$length[result$name =='b'], 7)
  expect_equal(result$length[result$name =='d'], 0)
  expect_equal(result$n[result$name =='b'], 1)
  expect_equal(result$gc_percent[result$name =='a'], 0.5)
  expect_false(result$valid[result$name =='c'])
  })

