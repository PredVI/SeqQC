read_fasta <- function(file) {
  if (!file.exists(file)) stop('File does not exist.')
  lines <- readLines(file, warn = FALSE)
  lines <- trimws(lines)
  lines <- lines[lines != '']
  if (length(lines) == 0) return(character(0))
  if (!any(grepl('^>', lines))) stop('No header \" > \" is found in the file')

  index <- which(grepl('^>', lines))
  names <- sub('^>\\s*', '', lines[index])
  seqs <- character(length(index))

  for (k in seq_along(index)) {
    start <- index[k] + 1
    end <- if( k < length(index)) index[k + 1] - 1 else length(lines)
    chr <- if (start <= end) paste0(lines[start:end], collapse = '') else ''

    chr <- toupper(gsub('\\s+', '', chr))
    chr <- gsub('[^ATCGN]', '', chr)
    seqs[k] <- chr
  }
  names(seqs) <- names
  return(seqs) }
