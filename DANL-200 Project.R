install.packages("hoopR")
  library(hoopR)
if (!requireNamespace('pacman', quietly = TRUE)){
  install.packages('pacman')
}
pacman::p_load_current_gh("sportsdataverse/hoopR", dependencies = TRUE, update = TRUE)

progressr::with_progress({
  nba_pbp <- hoopR::load_nba_pbp()
})
tictoc::toc()