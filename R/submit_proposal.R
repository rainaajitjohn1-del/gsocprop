#' GSoC 2026 Submission Deadline
#' @export
SUBMISSION_DEADLINE <- as.Date("2026-03-31")

#' Submit a GSoC Proposal
#'
#' @title Submit GSoC Proposal
#' @description Checks whether the current date is before the GSoC 2026
#'   submission deadline. The deadline is \Sexpr{format(gsocprop::SUBMISSION_DEADLINE, "%B %d, %Y")}.
#'   \Sexpr{
#'     days_left <- as.numeric(gsocprop::SUBMISSION_DEADLINE - Sys.Date())
#'     if (days_left >= 0) paste("The deadline is in", days_left, "day(s).") else "The deadline has passed, try next year!"
#'   }
#' @return \code{TRUE} if called before the deadline, \code{FALSE} otherwise.
#' @examples
#' submit_proposal()
#' @export
submit_proposal <- function() {
  today <- Sys.Date()
  if (today <= SUBMISSION_DEADLINE) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}