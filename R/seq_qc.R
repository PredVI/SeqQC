seq_qc <- function(seq) {
  if(length(seq) == 0) stop('Check that your sequence imported successfully!')

  Name <- names(seq)
  seq <- toupper(as.character(seq))
  if(is.null(Name)) Name <- rep(NA_character_, length(seq))

   output <- data.frame(
    length = nchar(seq),
    name = Name,
    gc_percent = NA_real_,
    n = NA_real_,
    valid = NA)

  for ( i in seq_along(seq)) {
    if (nchar(seq[i]) == 0) {
       output$gc_percent[i] <- 0
       output$n[i] <- 0
       output$valid[i] <- TRUE }
    else { n1 <- gregexpr('N', seq[i])[[1]]
    g1 <- gregexpr('G', seq[i])[[1]]
    c1 <- gregexpr('C', seq[i])[[1]]
    N_number <- if(n1[1] == -1) 0 else length(n1)
    G_number <- if(g1[1] == -1) 0 else length(g1)
    C_number <- if(c1[1] == -1) 0 else length(c1)

    output$n[i] <- N_number/nchar(seq[i])
    output$gc_percent[i] <- (G_number + C_number)/nchar(seq[i])
    output$valid[i] <- grepl('^[ACGTN]*$', seq[i])
    }}
  return(output)
}