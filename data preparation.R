# NBA_Analysis: Scott Young
# Data preparation

#   Install required packages
  install.packages("stringr", repos='http://cran.us.r-project.org')
  install.packages("ggplot2", repos='http://cran.us.r-project.org')
  install.packages("scales", repos='http://cran.us.r-project.org')
  
  library("stringr")
  library("ggplot2")
  library("scales")
  
#   Import data
    playbyplay <- read.csv("D:/Development/NBA_Analysis/data/combined-stats.csv", dec=",")
  
#   Cleanse data
    #game_id
    playbyplay$game_id <- str_replace(playbyplay$game_id, "=", "")
    playbyplay$game_id <- str_replace_all(playbyplay$game_id, "\"", "")
    playbyplay$num <- str_replace(playbyplay$num, "NA", "")

#   Summarise imported data
    summary(playbyplay)
    
#   Set data types
    playbyplay$game_id <- factor(playbyplay$game_id)
    playbyplay$date <- as.Date(playbyplay$date)
    playbyplay$period <- factor(playbyplay$period)
    playbyplay$event_type <- factor(playbyplay$event_type)
    playbyplay$type <- factor(playbyplay$type)
  
#   Example 1: Explore Joe Johnsons shooting
    #   Identify Joe Johnsons shooting data
    joeJohnson <- playbyplay[playbyplay$player == "Joe Johnson" & playbyplay$event_type == c("shot", "miss"), ]
    prop.table(table(train$Sex, train$Survived))
  
  # 2-Way Frequency Table 
  attach(mydata)
  mytable <- table(A,B) # A will be rows, B will be columns 

  