data_dir <- function(data_source = c("simulated", "real")){

  data_source <- match.arg(data_source, c("simulated", "real"))

  if (data_source == "simulated"){
    if (str_detect(getwd(), "laurasymul"))
      data_dir <- "/Users/laurasymul/OneDrive - UCL/Academia/Research/VIBRANT data UCLouvain/"
    else if (str_detect(getwd(), "vermeren"))
      data_dir <- "/Users/lvermeren/OneDrive - UCL/VIBRANT data UCLouvain/"
    else
      stop("You need to specify the path to the data directory in `R/data_dir.R`")

    data_dir <- data_dir |> str_c("simulated data/")
    data_dir <- fs::dir_ls(data_dir) |> sort(decreasing = TRUE) |> magrittr::extract(1) |> str_c("/")
  } else {
    stop("The `R/data_dir.R` needs to be modified to specify the path to the real data directory.")
  }

  data_dir
}


dropbox_dir <- function(){
  if (str_detect(getwd(), "laurasymul"))
    dropbox_dir <- "/Users/laurasymul/Dropbox/Academia/Projects/VIBRANT Study Files/"
  else if (str_detect(getwd(), "vermeren"))
    dropbox_dir <- "/Users/lvermeren/Dropbox/VIBRANT Study Files/"
  else
    stop("Hello! You need to specify the path to the data directory in the function `dropbox_dir` in the R/data_dir.R file.")
  dropbox_dir
}


