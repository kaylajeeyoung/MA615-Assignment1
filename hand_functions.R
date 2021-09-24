
#functions for data summary statistics
sum_special <- function(df_x){
  try(if(!is.data.frame(df_x)) stop("Input data must be a data frame."))
  
  #calculate desired summary statistics
  sp_means <- apply(df_x, MARGIN = 2, FUN = mean) #margin 2 means columns
  sp_var <- apply(df_x, MARGIN = 2, FUN = var)
  sp_cov <- cov(df_x)
  sp_cor <- cor(df_x)
  
  #create a variable to output
  sp_outputs <- list(sp_means = sp_means, 
                     sp_var = sp_var, 
                     sp_cov = sp_cov, 
                     sp_cor = sp_cor)
  
  #output
  return(sp_outputs)
  
}


quant_special <- function(df_x){
  try(if(!is.data.frame(df_x)) stop("Input data must be a data frame."))
  
  #calculate the quantiles
  quant <- apply(df_x, MARGIN = 2, FUN = quantile)
  
  return(quant)
}

