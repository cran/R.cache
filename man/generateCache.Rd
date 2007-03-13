%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  generateCache.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{generateCache}
\alias{generateCache.default}
\alias{generateCache}

\title{Generates a cache pathname from a key list object}

\description{
 Generates a cache pathname from a key list object.
}

\usage{\method{generateCache}{default}(key=NULL, suffix=".Rcache", ...)}

\arguments{
  \item{key}{An object from which a hexadecimal hash code will be
    generated and appended to the filename.}
  \item{suffix}{A \code{\link[base]{character}} string to be appended to the end of the
    filename.}
  \item{...}{Arguments passed to \code{\link{getCachePath}}().}
}

\value{
  Returns the path as a \code{\link[base]{character}} string.
}

\details{
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}




\keyword{programming}
\keyword{IO}
\keyword{internal}
