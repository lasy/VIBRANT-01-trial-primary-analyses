

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


get_taxa_colors <- function(taxa) {
  tibble(
    taxa = taxa
  ) |>
    mutate(
      cat =
        case_when(
          taxa == "Other" ~ "Other",
          str_detect(taxa, "crispatus") ~ "crispatus",
          str_detect(taxa, "LBP") ~ "LBP",
          str_detect(taxa, "iner") ~ "iners",
          str_detect(taxa, "revotella") ~ "prevotella",
          str_detect(taxa, "ardnerella") ~ "gardnerella",
          TRUE ~ "non lacto"
        )
    ) |>
    group_by(cat) |>
    mutate(
      color =
        case_when(
          taxa == "Other" ~ "gray80",
          str_detect(taxa, "LBP") ~ colorRampPalette(c("orangered1", "red4"))(n()),
          str_detect(taxa, "crispatus") ~ "orange",
          str_detect(taxa, "iner") ~ "green3",
          str_detect(taxa, "jensenii") ~ "green4",
          str_detect(taxa, "ardnerella") ~ colorRampPalette(c("dodgerblue1", "dodgerblue4"))(n()),
          str_detect(taxa, "revotella") ~ colorRampPalette(c("purple1", "purple4"))(n()),
          TRUE ~ colorRampPalette(c("turquoise3", "black"))(n())
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









