%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  getCachePath.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getCachePath}
\alias{getCachePath.default}
\alias{getCachePath}

\title{Gets the path to the file cache directory}

\description{
 Gets the path to the file cache directory.
 If missing, the directory is created.
}

\usage{
\method{getCachePath}{default}(dirs=NULL, path=NULL, rootPath=getCacheRootPath(), ...)
}

\arguments{
  \item{dirs}{A \code{\link[base]{character}} \code{\link[base]{vector}} constituting the path to the
     cache subdirectory (of the \emph{cache root directory}
     as returned by \code{\link{getCacheRootPath}}()) to be used.
     If \code{\link[base]{NULL}}, the path will be the cache root path.}
  \item{path, rootPath}{(Advanced) \code{\link[base]{character}} strings specifying the
     explicit/default cache path and root cache path.}
  \item{...}{Not used.}
}

\value{
  Returns the path as a \code{\link[base]{character}} string.
  If the user does not have write permissions to the path, then
  an error is thrown.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{setCachePath}}.
}




\keyword{programming}
\keyword{IO}
\keyword{internal}
