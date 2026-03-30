#' GSoC 2026 Submission Deadline
#' @export
SUBMISSION_DEADLINE <- as.Date("2026-03-31")

#' Submit a GSoC Proposal
#'
#' @title Submit GSoC Proposal
#' @description Checks whether the current date is before the GSoC 2026
#'   submission deadline. The deadline is \Sexpr{format(gsocprop::SUBMISSION_DEADLINE, "%B %d, %Y")}.
#' @return \code{TRUE} if called before the deadline, \code{FALSE} otherwise.
#' @examples
#' submit_proposal()
#' @export
submit_proposal <- function() {
  today <- Sys.Date()
  time_left <- as.numeric(SUBMISSION_DEADLINE - today)
  
  if (today <= SUBMISSION_DEADLINE) {
    message("The deadline is in ", time_left, " day(s).")
    return(TRUE)
  } else {
    message("The deadline has passed, try next year!")
    return(FALSE)
  }
}