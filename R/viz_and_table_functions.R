

make_title <-
  function(mae){
    str_c(ifelse(mae@metadata$data_source == "simulated", "Simulated", "Actual Study"), " Data as of ", mae@metadata$date)
  }


get_arm_colors <- function(){
  blue_hue <- 0.61
  green_hue <- 0.45
  c(
    "Pl" = "gray",
    "Blinded" = "gray",
    "LC-106-7" = hsv(h = blue_hue, s = 0.7, v = 0.5),
    "LC-106-3" = hsv(h = blue_hue, s = 0.55, v = 0.8),
    "LC-106-o" = hsv(h = blue_hue, s = 0.35, v = 1),
    "LC-115" = hsv(h = green_hue, s = 0.95, v = 0.9)
    )
}


get_origin_colors <- function(){
  c("SA" = "green3", "US" = "steelblue3", "Other" = "gray80")
}

arrange_participants <- function(tb, by){
  tb |>
    group_by(pid) |>
    mutate(score = sum(as.numeric(taxa) * prop)) |>
    ungroup() |>
    arrange(-score) |>
    mutate(pid = pid |> fct_inorder()) |>
    select(-score)
}









