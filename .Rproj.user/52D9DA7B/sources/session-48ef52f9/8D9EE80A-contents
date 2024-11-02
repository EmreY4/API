# 📊 Data Collection and Analysis of Flight and Traffic Data

This project focuses on collecting and analyzing flight data and traffic data using the DKSTAT and OpenSky APIs. By comparing these datasets, we can gain insights into transport patterns and safety.

## 🚀 Introduction

These scripts perform the following steps:

- Fetch traffic data from the DKSTAT API using specific filters.
- Analyze flight data and investigate relationships between geographical coordinates.
- Collect flight data from the OpenSky API at time intervals.

## 📁 Contents

- **API - Data Collection Through DKSTAT API.R**: R script to fetch traffic data using the DKSTAT API.
- **flights.R**: R script for analyzing flight data and calculating R² values for the relationship between longitude and latitude.
- **FLY & API.R**: R script that retrieves data from the OpenSky API and collects observations over time.
- **FLY_and_API.R**: R script for data collection from the OpenSky network with authentication.

## 📊 Data Analysis

### API - Data Collection Through DKSTAT API.R

- **Data Retrieval via API**:
  - Loads the `dkstat` library to access the DKSTAT API.
  - Fetches metadata about tables and constructs filters for specific traffic data.

### flights.R

- **Analysis of Flight Data**:
  - Loads flight data from an object (`rvymy_flights`) and assigns column names.
  - Splits the data by callsign and performs linear regressions to find the relationship between longitude and latitude.
  - Calculates R² values for each flight type and stores them in a dataset.

### FLY & API.R

- **Data Collection from OpenSky API**:
  - Loads `httr` and `jsonlite` libraries to handle API requests.
  - Retrieves flight data from the OpenSky API for a specified geographical region and saves unique states.

### FLY_and_API.R

- **Data Collection with Authentication**:
  - Retrieves flight data from the OpenSky network using authentication.
  - Collects data over a specified time frame in a loop and stores them in a list.

## 🛠️ Technologies

- **R**: The analysis and programming environment used for data handling and visualization.
- **dkstat**: Library for accessing the DKSTAT API.
- **httr**: Library for HTTP requests.
- **jsonlite**: Library for handling JSON data.

## 📌 Requirements

- R and RStudio must be installed on your machine.
- The following packages should be installed:
    ```r
    install.packages(c("dkstat", "httr", "jsonlite", "dplyr"))
    ```

## 🤝 Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to fork the repository and submit a pull request.