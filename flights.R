
df <- rvymy_flights

names <- c("icao24",
"callsign",
"origin_country",
"time_position",
"last_contact",
"longitude",
"latitude",
"baro_altitude",
"on_ground",
"velocity",
"true_track",
"vertical_rate",
"sensors",
"geo_altitude",
"squawk",
"spi",
"position_source")

colnames(df) <- names
df[,c(4:7)] <- sapply(df[,c(4:7)], as.numeric) 


fllist <- split(df,df$callsign)

testdf <- fllist$`SAS1260 `
testdf2 <- fllist$`AFR1176 `


# find ud af om der er et ligenærtforhold mellerm longitude og latitude

testdf2_lm <- lm(data = testdf2, longitude ~ latitude)

summary(testdf2_lm)

testdf_lm <- lm(data = testdf, longitude ~ latitude)

f <- summary(testdf_lm)
f$r.squared

# lav et lop der bernger r^2 og gemmer i en vecert 

opsam <- data.frame(matrix(ncol = 2))
colnames(opsam) <- c("callsign", "r.squared" )

for (i in (1:length(fllist))) {
  
  test_lm <- lm(data = fllist[[i]], longitude ~ latitude)
  summary_lm <- summary(test_lm)
  
  opsam[i,1] <- fllist[[i]][["callsign"]][1]
  opsam[i,2] <- summary_lm$r.squared
  

  
}

# nu vil vi gerne merge r.squared med df

library(dplyr)

tdf <- left_join(df,opsam,by = "callsign")





