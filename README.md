# 🦠 COVID-19 Data Analysis Project

This project focuses on analyzing COVID-19 data, including death rates and vaccination progress across different countries. The goal is to uncover trends and insights that can help understand the pandemic's impact globally.

## Table of Contents
- [Project Overview](#project-overview)
- [Datasets](#datasets)
- [Setup Instructions](#setup-instructions)
- [Analysis Features](#analysis-features)
- [Tableau Dashboard](#tableau-dashboard)
- [Usage](#usage)
- [Results and Insights](#results-and-insights)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Project Overview

The **COVID-19 Data Analysis Project** is designed to provide comprehensive insights into the spread and impact of COVID-19. By analyzing datasets on death rates and vaccination progress, this project aims to identify key trends and correlations. Additionally, the Tableau dashboard provides an interactive way to explore these trends.
## Datasets

The following datasets are used in this project:
- **CovidDeaths.xlsx**: An Excel file containing COVID-19 death data by country.
- **CovidVaccinations.xlsx**: An Excel file containing vaccination data by country.
- **CovidDeaths_utf8_with_NULL.csv**: A CSV file of COVID-19 death data with UTF-8 encoding and NULL values.
- **CovidVaccinations_utf8_with_NULL.csv**: A CSV file of COVID-19 vaccination data with UTF-8 encoding and NULL values.
- **Tableau Hyper Files**: Files containing processed data for use in Tableau.
- **Tableau Workbook (`Book1.twb`)**: A Tableau workbook file that visualizes the COVID-19 data.
## Setup Instructions

To set up and run this project on your local machine, follow these steps:

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/Shalabhsinghyadav01/Covid_Death_Analysis
    cd covid-data-analysis
    ```
2. **Install Required Tools:**
   Ensure you have the following installed:
   - Python 3.x
   - Pandas library for data manipulation
   - SQLite or another SQL-compatible database system
   - Tableau Desktop for visualization

3. **Set Up the Database:**
   - Load the `CovidDeaths_utf8_with_NULL.csv` and `CovidVaccinations_utf8_with_NULL.csv` datasets into your SQL database.

4. **Execute the SQL Script:**
   - Run the `covid_death_analysis.sql` script to perform the analysis.

## Analysis Features

### Death Rates by Country

- **Description:** This analysis explores the death rates in different countries over the course of the pandemic.
- **Purpose:** To identify which regions were most affected by COVID-19 and to observe any patterns over time.

### Vaccination Progress

- **Description:** This analysis examines the vaccination rates by country.
- **Purpose:** To understand the distribution and uptake of vaccines globally and how it correlates with death rates.

### Correlation Between Vaccination and Death Rates

- **Description:** This section investigates the relationship between vaccination rates and death rates.
- **Purpose:** To analyze if higher vaccination rates are associated with lower death rates.

## Tableau Dashboard

### Overview

The Tableau dashboard is designed to provide an interactive visualization of the COVID-19 data, including death rates and vaccination progress across various countries. This allows users to explore the data in a more dynamic and insightful way.

### Dashboard Features

#### Global Death Rates Map

- **Description:** This map visualization shows the distribution of COVID-19 death rates across the world.
- **Purpose:** Helps identify which regions have been most affected by the pandemic.
- **Interactive Elements:** Users can zoom in and out on the map, and hover over countries to see detailed death rate data.

#### Vaccination Progress Over Time

- **Description:** This line chart displays the vaccination progress over time in different countries.
- **Purpose:** Allows users to track how vaccination efforts have evolved.
- **Interactive Elements:** Users can filter the data by country or region to focus on specific areas.

#### Correlation Analysis

- **Description:** This scatter plot visualizes the relationship between vaccination rates and death rates.
- **Purpose:** Helps identify trends and correlations between vaccination efforts and mortality rates.
- **Interactive Elements:** Users can filter data points by region or date range to explore specific trends.

### Setup Instructions for Tableau

1. **Open the Tableau Workbook:**
   - Open `Book1.twb` in Tableau Desktop.

2. **Load the Data:**
   - Ensure that the data sources (Excel files and Hyper files) are correctly linked in Tableau.

3. **Explore the Dashboard:**
   - Navigate through the different views and use the interactive filters to customize the data view according to your preferences.

### Dashboard Access

You can directly access the interactive dashboard using the Tableau Public link (if published), or by opening the provided Tableau workbook on your local machine.

## Usage

1. **Explore the Data:**
   - Use Python and Pandas to load and explore the data files.
   - Utilize SQL to perform in-depth analysis using the provided SQL script.

2. **Analyze Trends:**
   - Investigate trends in death rates and vaccination progress.
   - Correlate findings to draw meaningful conclusions.

3. **Visualize Results:**
   - Use the Tableau dashboard to create interactive visualizations that showcase your findings.

## Results and Insights

The analysis reveals important insights such as:
- The effectiveness of vaccination programs in reducing death rates.
- Regional disparities in the pandemic's impact.
- Time-based trends in COVID-19 severity and response.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature-name`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature-name`).
5. Create a new Pull Request.
## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.



## Contact
If you have any questions or want to discuss the project, feel free to reach out:
- **Name**: Shalabh Singh Yadav
- **Email**: [shalabhsinghyadav@gmail.com](mailto:shalabhsinghyadav@gmail.com)
- **LinkedIn**: [LinkedIn Profile](https://www.linkedin.com/in/shalabh-singh-yadav-66b607204/)
- **Tableau**: [Tableau Profile](https://public.tableau.com/app/profile/shalabh.yadav/vizzes)