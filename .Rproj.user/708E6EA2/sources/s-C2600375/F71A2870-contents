notchar <- function(x) !is.character(x)
examples <- function(df, n=4, fmt="%.2f"){
  dots <- function(x) "..."
  contin <- function(df){
    df %>% sample_n(1) %>% mutate_all(.funs=funs(dots))
  } 
  df %>% 
    do(sample_n(., n) %>% 
         mutate_if(notchar, funs(sprintf(fmt, .))) %>% 
         bind_rows(., contin(.))) 
}

commalist <- function(l){
  n <- length(l)
  sprintf("%s and %s", paste(l[1:n-1], collapse = ", "), l[n])
}