% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/rescalers.r
\name{rescale_11}
\alias{rescale_11}
\title{rescale vectors to [-1,1]}
\usage{
rescale_11(xvars, xlim = NULL, zero = FALSE)
}
\arguments{
\item{xvars}{a list of vectors}

\item{xlim}{NULL (default) or a numeric vector of length two that specifies
the range of values to scale to [-1, 1]}

\item{zero}{logical. Should zero be added to the range before rescaling?}
}
\value{
a list of vectors
}
\description{
rescale_11 rescales every vector in a list of vectors to the range [-1, 1].
rescale_11 rescales the vectors as a group (instead of rescaling each vector
independently). This is a helpful feature for rescaling related variables (such
as xmin and xmax) without nullifying the difference between the two.
}
\details{
If a vector is a character or factor vector, rescale_11 attempts to coerce it
to numeric before scaling. The scale is determined by finding the range of
values contained in the list of vectors and mapping it ot [-1, 1].

If the full range of values to be scaled is not present in the vectors, users
can specify the range to be scaled to [-1,1] with the xlim argument. Values in
the vectors will be rescaled as if they according to this range.
}
\seealso{
\code{\link{rescale_01}}, \code{\link{rescale_2pi}}
}

