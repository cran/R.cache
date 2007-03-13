#########################################################################/**
# @RdocDefault generateCache
#
# @title "Generates a cache pathname from a key list object"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{key}{An object from which a hexadecimal hash code will be 
#     generated and appended to the filename.}
#   \item{suffix}{A @character string to be appended to the end of the
#     filename.}
#   \item{...}{Arguments passed to @see "getCachePath".}
# }
#
# \value{
#   Returns the path as a @character string.
# }
#
# \details{
# }
#
# @author
#
# @keyword "programming"
# @keyword "IO"
# @keyword "internal"
#*/######################################################################### 
setMethodS3("generateCache", "default", function(key=NULL, suffix=".Rcache", ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'key':
  if (!is.null(key)) {
    if (!is.list(key))
      throw("Argument 'key' must be a list or NULL: ", class(key)[1]);

    # Using key object requires the CRAN package 'digest'.
    require(digest) || throw("Package not loaded: digest");
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Generate cache name from hash code of key object
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!is.null(key)) {
    hashCode <- digest(key);
    cacheName <- hashCode;
  }

  # Add cache directory or pathname
  path <- getCachePath(...);
  cacheName <- file.path(path, cacheName);

  # Add suffix
  cacheName <- paste(cacheName, suffix, sep="");


  cacheName;
})


############################################################################
# HISTORY:
# 2005-12-09
# o Removed 'file' argument.
# 2005-12-06
# o Created.
############################################################################
