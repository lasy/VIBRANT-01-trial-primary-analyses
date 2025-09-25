

arrange_participants <- function(tb, by){
  tb |>
    group_by(pid) |>
    mutate(score = sum(as.numeric(taxa) * prop)) |>
    ungroup() |>
    arrange(-score) |>
    mutate(pid = pid |> fct_inorder()) |>
    select(-score)
}


plot_tabs <- function(plots) {
  purrr::walk(
    names(plots),
    \(x) {
      cat('### ', x, '\n\n')
      print(plots[[x]])
      cat('\n\n')
    }
  )
}







