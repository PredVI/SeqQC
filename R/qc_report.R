qc_report <- function(seq) {
  if(length(seq) == 0) stop('Check that your sequence imported successfully!')

  Name <- names(seq)
  seq <- toupper(as.character(seq))
  if(is.null(Name)) Name <- rep(NA_character_, length(seq))

  output <- data.frame(
    length = nchar(seq), name = Name, gc_percent = NA,
    n = NA, valid = NA, pass = NA, reason = '')

  for ( i in seq_along(seq)) {
    chrs <- strsplit(seq[i], '') [[1]]
    N_number <- sum(chrs == 'N')
    G_number <- sum(chrs == 'G')
    C_number <- sum(chrs == 'C')
    len <- nchar(seq[i])

    output$n[i] <- if(len == 0) 0 else N_number / len
    output$gc_percent[i] <- if(len == 0) 0 else (G_number + C_number) / len
    output$valid[i] <- all(chrs %in% c('N', 'A', 'C', 'G', 'T'))

 fail <- c()
 if (len < 50) fail <- c(fail, 'Short Sequence.')
 if (!output$valid[i]) fail <- c(fail, 'Invalid')
 if (output$n[i] > 0.05) fail <- c(fail, 'Too many N!')

 output$pass[i] <- length(fail) == 0
 output$reason[i] <- paste(fail, collapse = ';')}
  return(output) }
