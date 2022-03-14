
#' NBA most point function
#'
#' This function allows you to find the player with most points any year from 1950 - 2017
#' @param year Indicate the year that you are interested.
#' @keywords internal
#' @export
#' @examples
#' mostpoint(1998)



mostpoint = function(year){
  data = read.csv("data/Seasons_Stats_NBA.csv")
  temp = subset(data, Year == year)
  temp = temp[which.max(temp$PTS),]
  return(temp)
}
