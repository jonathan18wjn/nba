#' NBA correlation matrix(correlation)
#'
#' This function allows you to find the correlation among the numeric variables of all players from any year between 1950 - 2017
#' @param year Indicate the year that you are interested.
#' @keywords internal
#' @export
#' @examples
#' correlation(1998)



correlation = function(year){
  data = read.csv("data/Seasons_Stats_NBA.csv")
  temp = subset(data, Year == year)
  temp = purrr::keep(temp, is.numeric)
  return(cor(temp, use = "complete.obs"))
}
