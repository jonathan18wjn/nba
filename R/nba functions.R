#' NBA oldest player function (oldest)
#'
#' This function allows you to find the oldest player any year from 1950 - 2017
#' @param year Indicate the year that you are interested.
#' @keywords internal
#' @export
#' @examples
#' oldest(1998)


oldest = function(year){
  temp = subset(nba_data, Year == year)
  temp = temp[which.max(temp$Age),]
  return(temp)
}



#' NBA most point function
#'
#' This function allows you to find the player with most points any year from 1950 - 2017
#' @param year Indicate the year that you are interested.
#' @keywords internal
#' @export
#' @examples
#' mostpoint(1998)



mostpoint = function(year){
  temp = subset(nba_data, Year == year)
  temp = temp[which.max(temp$PTS),]
  return(temp)
}



#' NBA correlation matrix(correlation)
#'
#' This function allows you to find the correlation among the numeric variables of all players from any year between 1950 - 2017
#' @param year Indicate the year that you are interested.
#' @keywords internal
#' @export
#' @examples
#' correlation(1998)



correlation = function(year){
  temp = subset(nba_data, Year == year)
  temp = purrr::keep(temp, is.numeric)
  return(cor(temp, use = "complete.obs"))
}
