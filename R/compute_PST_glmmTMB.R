#' @title Compute Pst 
#'
#' @description Compute Pst from glmmTMB model
#'
#' @param model Model object to estimate Pst
#'
#' @return A list with PST value and a table of variance components
#' @export
#'
#' @examples
#'compute_PST_glmmTMB(mod_slope_decompo)



compute_PST_glmmTMB <- function(model, group_name = "EvolHistory") {
  # Extract conditional random effect SDs
  
  # Get VarCorr object
  vc <- nlme::VarCorr(model)
  
  # Conditional random effects
  cond_var <- c(Pop.EvolHistory = vc$cond$`Pop:EvolHistory`[1,1],
                EvolHistory = vc$cond$EvolHistory[1,1])
  
  
  # Assign names automatically from VarCorr
  rand_names <- names(cond_var)
  
  
  if(length(rand_names) != length(cond_var)) rand_names <- paste0("RE", seq_along(rand_var))
  names(cond_var) <- rand_names
  
  # Residual variance
  var_resid <- sigma(model)^2
  
  
  # Total variance
  total_var <- sum(cond_var) + var_resid
  
  # Variance of focal group
  if(!group_name %in% names(cond_var)) stop(paste("Group", group_name, "not found"))
  var_group <- cond_var[group_name]
  
  # PST
  PST <- var_group / total_var
  
  # Build table
  variance_table <- data.frame(
    Group = c(names(cond_var), "Residual", "Total"),
    Variance = c(cond_var, var_resid, total_var))
  
  return(list(PST = PST, table = variance_table))
}

