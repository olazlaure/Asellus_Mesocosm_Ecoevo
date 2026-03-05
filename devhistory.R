# Create project on Github

## Create compendium
rrtools::use_compendium("/Users/lolazcuaga/Documents/RESEARCH_Local/Asellus_Mesocosm_Ecoevo/", open = FALSE)

## Add to .gitignore
usethis::use_git_ignore(".DS_Store")
usethis::use_build_ignore(".DS_Store")
usethis::use_git(message = ":see_no_evil: Ban .DS_Store files")

## Modify DESCRIPTION file
usethis::edit_file("DESCRIPTION")
usethis::use_git(message = ":bulb: Update documentation")

## Create directories
dir.create("data")
dir.create("reports")
dir.create("figures")

## Create a R directory and a file for functions
usethis::use_r("theme_LO_sobre")

## Update DESCRIPTION file
usethis::use_package("ggplot2")
usethis::use_package("lme4")
usethis::use_package("MuMIn")
usethis::use_package("r2glmm")
usethis::use_package("splines")
usethis::use_package("nlme")
usethis::use_package("glmmTMB")

## Update NAMESPACE file
devtools::document()

## Load all required packages
devtools::load_all()

