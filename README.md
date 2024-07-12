
# pubmedR

`pubmedR` is an R package designed to fetch and process data from the
PubMed database. The package provides functions to build search URLs,
retrieve search results, and process paper entries to extract relevant
information.

## Installation

To install the package, you can use the `devtools` package to install it
from a local directory or GitHub repository.

``` r
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

# install "pubmedR" from a local directory
devtools::install("path/to/pubmedR")

# or install directly from GitHub
devtools::install_github("danymukesha/pubmedR")
```

## Usage

Below are detailed steps on how to use the `pubmedR` package.

### Load the Package

``` r
library(pubmedR)
```

### Define a Search Instance

You need to define a search instance that contains the query parameters
for fetching data from PubMed.

``` r
search <- list(
  query = "(Alzheimer OR dementia OR cognitive impairment) AND (urin*) AND (early detection OR disease monitoring OR diagnosis)",
  since = as.Date("2020-01-01"),
  until = as.Date("2021-01-01"),
  publication_types = c("journal"),
  reached_its_limit = function(label) { FALSE },
  add_paper = function(paper) { print(paper) }
)
```

### Run the Search

Use the `run` function to fetch papers from PubMed based on the defined
search parameters.

``` r
run(search)
```