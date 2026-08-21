library(ggplot2)

# Structural theme colors
project_palette <- c(
  node_parent   = "#1A365D",
  node_child    = "#2B6CB0",
  edge_active   = "#E53E3E",
  edge_inactive = "#CBD5E0"
)

# Explicit Categorical Colors for Category
category_colors <- c(
  "Combined Agroecosystem" = "#827365", # Earthy taupe
  "Crops"                  = "#DE9F47", # Golden wheat/amber
  "Grassland"              = "#587E54", # Botanical green
  "Livestock"              = "#B85A4E", # Muted terracotta red
  "Intensity & Management" = "#3B6E8C", # Steel/slate blue
  "Fertilizer"             = "#8DA35D", # Moss/leaf green
  "Pesticide"              = "#764E6F"  # Muted plum/purple
)

# Custom Scale Wrappers
scale_fill_category <- function() {
  scale_fill_manual(values = category_colors, name = "Category")
}

scale_color_category <- function() {
  scale_color_manual(values = category_colors, name = "Category")
}

# Network Edge Bundling colors
bundle_palette <- c(
  "Remotely Sensed" = "#1F7A8C",
  "In Situ & Survey Data" = "#C1663C",
  node_default = "#BDBDBD",
  text_dark = "#333333"
)

# Dataset group palette generator for bundles
get_dataset_palette <- function(n) {
  colorRampPalette(c(
    "#8B0000", "#FF4500", "#FFD700", "#7A7A1B", "#228B22",
    "#008B8B", "#0000CD", "#00008B", "#4B0082", "#8B008B"
  ))(n)
}

# Publication Theme
theme_publication <- function(base_family = "sans") {
  theme_void(base_family = base_family) +
    theme(
      legend.position   = "right",
      legend.title      = element_text(face = "bold", size = 11),
      legend.text       = element_text(size = 10),
      plot.margin       = margin(20, 25, 20, 25),
      plot.background   = element_rect(fill = "white", color = NA),
      plot.caption      = element_text(size = 16, hjust = 0.5, face = "bold", margin = margin(t = 20))
    )
}
