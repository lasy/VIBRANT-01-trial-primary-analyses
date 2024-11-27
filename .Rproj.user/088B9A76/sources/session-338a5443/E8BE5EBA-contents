

make_title <-
  function(mae){
    str_c(ifelse(mae@metadata$data_source == "simulated", "Simulated", "Actual Study"), " Data as of ", mae@metadata$date)
  }


get_arm_colors <- function(){
  blue_hue <- 0.61
  green_hue <- 0.45
  c(
    "gray",
    hsv(h = blue_hue, s = 0.7, v = 0.5),
    hsv(h = blue_hue, s = 0.55, v = 0.8),
    hsv(h = blue_hue, s = 0.35, v = 1),
    hsv(h = green_hue, s = 0.95, v = 0.9)
    )
}

get_taxa_color <- function(taxa){

  tibble(taxa = taxa) |>
    mutate(
      color =
        case_when(
          str_detect(taxa, "non-LBP") ~ "goldenrod1",
          str_detect(taxa, "LBP") ~ "darkorange1",
          str_detect(taxa, "iners") ~ "seagreen3",
          str_detect(taxa, "[nN]on [lL]actobacillus") ~ "gray40",
          str_detect(taxa, "actobacillus") ~ "seagreen4"
        )
    ) |>
    pull(color)

}

get_site_colors <- function(){
  c("CAP" = "green4", "MGH" = "steelblue1")
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









