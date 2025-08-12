theme_publication <- function(base_size = 12, base_family = "Helvetica") {
  library(grid)
  library(ggthemes)
  library(ggplot2)
  (theme_foundation(base_size = base_size, base_family = base_family)
    + theme(
      plot.title = element_text(face = "bold", size = rel(1.2), hjust = 0),
      text = element_text(),
      panel.background = element_blank(),
      plot.background = element_blank(),
      panel.border = element_rect(colour = "#f0f0f0"),
      axis.title = element_text(face = "plain", size = rel(1)), # face = "bold", size = rel(1)
      axis.title.y = element_text(angle = 90, vjust = 2),
      axis.title.x = element_text(vjust = -0.1),
      axis.text = element_text(), 
      axis.line = element_line(size = 0.2, colour = "black"),
      axis.ticks = element_line(),
      panel.grid.major = element_line(colour="#f0f0f0"),
      panel.grid.minor = element_blank(),
      legend.key = element_rect(colour = NA),
      legend.position = "right",
      legend.direction = "vertical",
      legend.title.align = 0,  
      legend.key.size = unit(0.5, "cm"),
      legend.margin = ggplot2::margin(0, unit = "cm"),
      #legend.title = element_text(face="italic"),
      legend.text = element_text(),
      plot.margin = ggplot2::margin(t = 2, r = 2, b = 2, l = 2, unit = "mm"),
      strip.background = element_rect(colour = "gray90", fill = "gray90"),
      strip.text = element_text(face = "bold"),
      strip.text.y = element_text(angle = 0, hjust = 0),
      plot.tag = element_text(face = 'bold')
    ))
}

theme_set(theme_publication())
