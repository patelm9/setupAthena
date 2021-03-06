% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log.R
\name{log}
\alias{log}
\title{Log Table Row Counts}
\usage{
log(conn, target_schema, verbose = TRUE, render_sql = TRUE)
}
\description{
This function prints the number of rows for all the vocabulary tables in the R console. The results are also stored alongside a log of all previous data loads in a "setupAthena" cache subdirectory using the caching functions in the R.cache package.
}
\examples{
\dontrun{
if(interactive()){
 #EXAMPLE1
 }
}
}
\seealso{
\code{\link[purrr]{map}},\code{\link[purrr]{set_names}}
\code{\link[pg13]{query}},\code{\link[pg13]{renderRowCount}},\code{\link[pg13]{table_exists}},\code{\link[pg13]{send}},\code{\link[pg13]{appendTable}}
\code{\link[dplyr]{bind}},\code{\link[dplyr]{rename}},\code{\link[dplyr]{mutate}},\code{\link[dplyr]{select}},\code{\link[dplyr]{reexports}}
\code{\link[cli]{cat_line}}
\code{\link[tibble]{as_tibble}}
\code{\link[tidyr]{pivot_wider}}
}
