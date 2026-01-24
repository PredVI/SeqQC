library(testthat)

test_that('read_fasta can actually read FASTA sequences?', {
  fasta <- tempfile(fileext = '.fa')
  cat('>s1 desc\nATG C\nGTA\nNNNNn\n', file = fasta)
  output <- read_fasta(fasta)
  expect_equal(as.character(output['s1 desc']), 'ATGCGTANNNNN')
  expect_equal(names(output), 's1 desc')
  expect_true(is.character(output))
})
