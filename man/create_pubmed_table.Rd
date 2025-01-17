% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_pubmed_table.R
\name{create_pubmed_table}
\alias{create_pubmed_table}
\title{Create a Table from PubMed Output}
\usage{
create_pubmed_table(pubmed_records)
}
\arguments{
\item{pubmed_records}{A list of PubMed records or a single PubMed record.
Each record should be a list containing the fields: title, abstract, authors,
publication (with title, issn, type), publication_date, doi, number_of_pages, pages, and database.}
}
\value{
A tibble containing the key information from the PubMed records.
}
\description{
This function takes a list of PubMed records and converts them into a tibble.
}
\examples{
pubmed_record <- list(
  title = "Impairment of cognition and sleep after acute ischaemic stroke or
   transient ischaemic attack in Chinese patients: design, rationale and 
   baseline patient characteristics of a nationwide multicentre prospective registry.",
  abstract = "Cognitive impairment and sleep disorder are both common 
  poststroke conditions and are closely related to the prognosis of patients who had a stroke...",
  authors = "Yongjun Wang",
  publication = list(title = "Stroke and vascular neurology", issn = "2059-8696", type = "Journal"),
  publication_date = "2020-07-13",
  doi = "10.1136/svn-2020-000359",
  number_of_pages = 6,
  pages = "139-144",
  database = "PubMed"
)

create_pubmed_table(pubmed_record)

}
