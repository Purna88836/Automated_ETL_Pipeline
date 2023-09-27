# End-to-End Data Integration and Visualization using Automated ETL Pipeline and Python

## Overview

This project, titled "End-to-End Data Integration and Visualization," demonstrates the creation of an ETL (Extract, Transform, Load) pipeline using GitHub Actions. The pipeline automatically triggers when a new `test.csv` file is added to the repository. It comprises three primary scripts: `extract.py`, `transform.py`, and `load.py`, responsible for data extraction, transformation, and loading into an external database. Additionally, it runs a `visualize.py` script to perform real-time data analysis and generate an interactive scatter plot.

## Table of Contents

1. [ETL Pipeline](#etl-pipeline)
    - [Data Extraction](#data-extraction)
    - [Data Transformation](#data-transformation)
    - [Data Loading](#data-loading)
2. [Real-Time Data Visualization](#real-time-data-visualization)
3. [Getting Started](#getting-started)
4. [Workflow](#workflow)

## ETL Pipeline

### Data Extraction

- **File**: `extract.py`
- **Description**: This script retrieves data from the `test.csv` file located in the repository. It loads the data into a Pandas DataFrame.

### Data Transformation

- **File**: `transform.py`
- **Description**: The transformation script applies various operations to the data loaded from `extract.py`. You can customize the transformation logic as needed, including filtering, aggregating, or cleaning the data. The transformed data is saved as `transformed_data.csv` for further processing.

### Data Loading

- **File**: `load.py`
- **Description**: The loading script connects to an external database (configure the database connection details) and loads the transformed data into the specified database table. Customize the database connection parameters in this script to match your database configuration.

## Real-Time Data Visualization

- **File**: `visualize.py`
- **Description**: This script performs real-time data analysis by creating an interactive scatter plot using Plotly. The scatter plot visually represents high-value companies and products based on specific criteria, helping you gain insights from your data.

## Getting Started

To use this project:

1. Clone this repository to your local machine.

2. Ensure you have Python 3.x installed. You can download Python from [here](https://www.python.org/downloads/).

3. Install the required Python packages by running the following command in your terminal:

   ```bash
   pip install -r requirements.txt

## Workflow

This project utilizes GitHub Actions to create an automated ETL (Extract, Transform, Load) pipeline whenever a new `test.csv` file is added to the repository. The workflow is designed to seamlessly process and analyze data, making it easy to extract valuable insights.

The workflow consists of several essential steps:

1. **Data Extraction (`extract.py`)**:
   - The `extract.py` script is responsible for retrieving data from the `test.csv` file, which is expected to be present in the repository.
   - Data is loaded into a Pandas DataFrame, ready for transformation.

2. **Data Transformation (`transform.py`)**:
   - In the `transform.py` script, data undergoes various transformations to prepare it for analysis.
   - Customizable transformation logic can be applied here, including filtering, aggregation, or data cleansing.
   - The transformed data is saved as `transformed_data.csv` for further processing.

3. **Data Loading (`load.py`)**:
   - The `load.py` script connects to an external database, configured with your specific database connection details.
   - It loads the transformed data into the specified database table, facilitating data storage and retrieval.

4. **Real-Time Data Visualization (`visualize.py`)**:
   - After completing the ETL process, the `visualize.py` script comes into play.
   - It generates a dynamic and interactive scatter plot using Plotly.
   - The scatter plot is designed to help you explore and analyze high-value companies and products over time.

To initiate the workflow:

1. Add or update the `test.csv` file in the repository.
2. GitHub Actions will automatically detect changes and initiate the ETL pipeline.
3. You can monitor the workflow's progress and status in the "Actions" tab of your GitHub repository.
4. Upon successful completion of the workflow, you'll find the interactive scatter plot as `scatter_plot.png`—ready for download and further analysis.