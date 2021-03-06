% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{maf2spec}
\alias{maf2spec}
\title{Construct the spectrum from a MAF file}
\usage{
maf2spec(
  bedtools_path = "bedtools",
  maf,
  ref_genome,
  context_length = 1,
  output_file
)
}
\arguments{
\item{bedtools_path}{Path of bedtool executable, e.g. "~/bedtools/bin/bedtool"}

\item{maf}{A maf file}

\item{ref_genome}{An fa file path of reference genome sequence}

\item{context_length}{The length of extension of each side of the mutation. 
By default it is 3 (trinucleotide context).}

\item{output_file}{An output file that contains the context matrix}
}
\value{
Returns a matrix of mutation counts in different context, 
in each of the samples
}
\description{
The function converts a MAF file into a spectrum matrix which has
mutation counts catalogued by contexts. It uses the fact that DNA has 
two complementary strands and folds the A/G mutations into to T/C. 
 
It is a wrapper on bedtools(https://github.com/arq5x/bedtools2/releases).
}
