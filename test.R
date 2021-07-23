library(furrr)
library(INLA)

set.seed(123)
x <- replicate(100, runif(10), simplify = FALSE)

plan(multisession, workers = 2)

system.time({
  future_map_dbl(x, mean)
})

system.time({
  future_map_dbl(x, mean)
})

plan(sequential)
