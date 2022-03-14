#' NBA oldest player function (oldest)
#'
#' This function allows you to find the oldest player any year from 1950 - 2017
#' @param year Indicate the year that you are interested.
#' @keywords internal
#' @export
#' @examples
#' oldest(1998)


oldest = function(year){
  data = read.csv("data/Seasons_Stats_NBA.csv")
  temp = subset(data, Year == year)
  temp = temp[which.max(temp$Age),]
  return(temp)
}
