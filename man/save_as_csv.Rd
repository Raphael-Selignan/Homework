% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_as_csv.R
\name{save_as_csv}
\alias{save_as_csv}
\title{save csv file under name given by user}
\usage{
save_as_csv(dataset, filename, row.names = FALSE, ...)
}
\arguments{
\item{dataset}{name of the dataset to save as csv}

\item{filename}{name chosen by the user, must be using csv extension}

\item{row.names}{Chooses to omit the row names when saving the file as csv, omitted by default}

\item{...}{Other possible parameters on how the list should be extracted}
}
\value{
no visible return, produces the path to the saved file
}
\description{
save csv file under name given by user
}
\examples{
\dontrun{
save_as_csv(prenoms, "prenoms.csv")
}

}
