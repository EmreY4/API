library(httr)
library(jsonlite)

Flightbaseurl <- "https://opensky-network.org/api"

resource <- "/states/all"

totalurl <- paste0(Flightbaseurl, resource)

testurl <- "https://opensky-network.org/api/states/all?time=1458564121&icao24=3c6444"

res <- GET(testurl, authenticate(user = "Kurt",password = "1234"))

res$status_code

dfrace <- as.data.frame(fromJSON(content(res, as="text")))


dkfly <- "https://opensky-network.org/api/states/all?lamin=54.2500&lomin=11.1000&lamax=56.4700&lomax=13.5700"

dkres <- GET(dkfly)

dkflydata <- as.data.frame(fromJSON(content(dkres, as="text")))

uniquestate <- unique(dkflydata$states.1)

# Generate loop for collecting data from CPH Kastrup with a 5 minute interval

interval <- 5

colobs <- list()
stoptid <- as.numeric(Sys.time()) + 20

while(Sys.time()<stoptid){
  #URL to retrieve data from
  dkres <- dkres
  #dkres <- GET(dkfly)
  if (dkres$status_code != 200){
    print("Got error from request")
    # Save error message to log file
    
  } else {
    dkflydata <- (fromJSON(content(dkres, as="text")))
    colobs <- append(colobs, list(dkflydata))
    
  #Save data to list
  Sys.sleep(1)
  # Save itterration result
  } 
}

total <- as.data.frame(colobs)




