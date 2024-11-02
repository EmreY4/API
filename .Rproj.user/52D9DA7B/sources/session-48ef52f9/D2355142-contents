# Framework for at kunne snakke med API'er
library(httr)
library(jsonlite)
#
flightbaseurl <- "https://opensky-network.org/api"

#
resource <- "/states/all"

totalurl <- paste0(flightbaseurl, resource)

testurl <- "https://opensky-network.org/api/states/all?time=1458564121&icao24=3c6444"

rquest <- GET(testurl)
#ny rquest
#rquest <- GET(testurl, authenticate(user = "Kurt", password = "1234"))

# Test om du er good to go. Skal have et resultat på 200
rquest$status_code

dfrace <- content(rquest, as = "text")
dfrace <- as.data.frame(fromJSON(content(rquest, as = "text")))

#
dkfly <- "https://opensky-network.org/api/states/all?lamin=45.8389&lomin=5.9962&lamax=47.8229&lomax=10.5226"

#opgave fra timen
dkfly <- "https://opensky-network.org/api/states/all?lamin=54.2500&lomin=11.1000&lamax=56.4700&lomax=13.5700"

dkres <- GET(dkfly)

dkflydata <- as.data.frame(fromJSON(content(dkres, as = "text")))

uniquestate <- (dkflydata$states1)

# Generate loop for collecting data from CPH Kaastrup with a 5 minute interval
interval <- 5
# Lav liste
colobs <- list()

stoptid <- as.numeric(Sys.time()) + 20
# Lav et while loop
while(Sys.time()<stoptid){
  #URL to retrieve data from
  #dkfly
  dkres <- dkres
  #dkres <- GET(dkfly)
  if (dkres$status_code != 200){
    #Save error message from log file
    print("Got error from request")
    
  } else {
    dkflydata <- (fromJSON(content(dkres, as = "text")))
    colobs <- append(colobs, dkflydata)
  #Save data to list
  
  Sys.sleep(1)
  # Save iteration of log files/result
  #print("Kurt")
  }
}

total <- as.data.frame(colobs)
