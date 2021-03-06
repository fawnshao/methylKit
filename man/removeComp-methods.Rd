\docType{methods}
\name{removeComp}
\alias{removeComp}
\title{Remove principal components from a methylBase object}
\usage{
  removeComp(mBase, comp = NULL)
}
\arguments{
  \item{mBase}{\code{\link{methylBase}} object with no NA
  values, that means all bases should be covered in all
  samples.}

  \item{comp}{vector of component numbers to be removed}
}
\value{
  new \code{\link{methylBase}} object
}
\description{
  This function can remove a given principal componet from
  a given methylBase object. First, it calculates principal
  components from percent methylation matrix and removes
  the given component(s), reconstructs the methylation
  matrix then reconstructs number of methylated and
  unmethylated Cs per position based on the reconstructed
  percent methylation matrix, and finally returns a new
  \code{\link{methylBase}} object.
}
\examples{
data(methylKit)

# remove 1st principal component
newObj=removeComp(methylBase.obj,comp=1)

# remove 3rd and 4th  principal components
newObj=removeComp(methylBase.obj,comp=c(3,4))
}

