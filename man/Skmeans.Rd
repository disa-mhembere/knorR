% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusternor.R
\name{Skmeans}
\alias{Skmeans}
\title{Perform spherical k-means clustering on a data matrix.
Similar to the k-means algorithm differing only in that data features are
 min-max normalized the dissimilarity metric is Cosine distance.}
\usage{
Skmeans(data, centers, nrow = -1, ncol = -1,
  iter.max = .Machine$integer.max, nthread = -1, init = c("kmeanspp",
  "random", "forgy", "none"), tolerance = 1e-06)
}
\arguments{
\item{data}{Data file name on disk (NUMA optmized) or In-memory data matrix}

\item{centers}{Either (i) The number of centers (i.e., k), or
(ii) an In-memory data matrix}

\item{nrow}{The number of samples in the dataset}

\item{ncol}{The number of features in the dataset}

\item{iter.max}{The maximum number of iteration of k-means to perform}

\item{nthread}{The number of parallel threads to run}

\item{init}{The type of initialization to use c("kmeanspp",
"random", "forgy", "none")}

\item{tolerance}{The convergence tolerance}
}
\value{
A list containing the attributes of the output of kmedoids.
 cluster: A vector of integers (from 1:\strong{k}) indicating the cluster to
         which each point is allocated.
 centers: A matrix of cluster centres.
 size: The number of points in each cluster.
 iter: The number of (outer) iterations.
}
\description{
Perform spherical k-means clustering on a data matrix.
Similar to the k-means algorithm differing only in that data features are
 min-max normalized the dissimilarity metric is Cosine distance.
}
\examples{
iris.mat <- as.matrix(iris[,1:4])
k <- length(unique(iris[, dim(iris)[2]])) # Number of unique classes
km <- Skmeans(iris.mat, k)

}
\author{
Disa Mhembere <disa@cs.jhu.edu>
}
