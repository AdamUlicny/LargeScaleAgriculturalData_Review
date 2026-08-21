# Large-Scale Agricultural Data Review

## Authors
- Adam Uličný

## Description
This repository contains code, data, and visualization pipelines for the review of large-scale agricultural datasets. It includes data preparation, network lineage resolution (hierarchical edge bundling), spatial/temporal resolution timelines, and hierarchical dataset clustering.

## Repository Structure

```text
.
├── agri_data_review.xlsx       # Primary Excel database
├── 01_data_prep.qmd            # Quarto script: Lineage parsing & dependency resolution
├── 02_network_plots.qmd        # Quarto script: Hierarchical edge bundling network plots
├── 03_timelines_resolution.qmd # Quarto script: Timelines & spatial/temporal resolution analysis
├── 04_dataset_clustering.qmd  # Quarto script: Hierarchical clustering of datasets by input lineage
├── _quarto.yml                 # Quarto project configuration
├── R/                          # R helper scripts
│   └── theme_config.R          # Color palettes, custom scales, and publication ggplot2 themes
├── data/                       # Data directory
│   └── processed/              # Derived CSV files (e.g., resolved network links)
└── outputs/                    # Output directory
    └── figures/                # Rendered publication-ready figures (PNG, PDF, SVG, EPS)
```

### Excel Workbook Structure (`agri_data_review.xlsx`)
- **`Sorted`**: Main dataset catalog containing dataset metadata (category, spatial/temporal resolution, extent, data format, citations, access) and direct input dependencies (`inputMap`, `inputRemote`, `inputStat`).
- **`Inputs`**: Lookup reference table cataloging foundational input sources, their types (*Remotely Sensed*, *In Situ & Survey Data*, *Map*), input groups, and provider agencies.

### Quarto Code & Workflow
The analysis is modularized into sequential Quarto (`.qmd`) documents:
1. `01_data_prep.qmd`: Parses `agri_data_review.xlsx`, resolves transitive map dependencies back to foundational inputs, and exports `data/processed/network_links.csv`.
2. `02_network_plots.qmd`: Generates hierarchical edge bundling visualizations linking datasets to input sources.
3. `03_timelines_resolution.qmd`: Produces resolution, extent, and timeline composition figures.
4. `04_dataset_clustering.qmd`: Performs Jaccard-distance hierarchical clustering of datasets based on resolved input lineage.

Shared graphical themes and palettes are defined in `R/theme_config.R`.

## License & Citation

### License
This repository is licensed under the [Creative Commons Attribution 4.0 International (CC-BY 4.0)](https://creativecommons.org/licenses/by/4.0/) license.

### Citation
If you use this dataset or code, please cite it as follows:

> Uličný, A. (Year). *Title of Scientific Publication / Review*. [Preprint / Journal Article / Zenodo Repository]. DOI: [INSERT_DOI_OR_URL_HERE] - will be updated when Zenodo repo is ready!
