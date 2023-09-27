import pandas as pd
import mysql.connector

# Replace with your database connection details
db_config = {
    "host": "sql9.freesqldatabase.com",
    "user": "sql9649540",
    "password": "Kyy5K7mtZK",
    "database": "sql9649540",
}

# Establish a database connection
connection = mysql.connector.connect(**db_config)

# Create a cursor
cursor = connection.cursor()

# Load data from a CSV file into a MySQL table
try:
    # Load the CSV data into a Pandas DataFrame
    df = pd.read_csv('transformed_data.csv')

    # Define the target table name in the database
    target_table = 'product'

    # Insert the data into the MySQL table (replace 'if_exists' as needed)
    df.to_sql(name=target_table, con=connection, if_exists='replace', index=False)

    print("Data loaded into the MySQL database successfully.")

except Exception as e:
    print(f"Error: {str(e)}")

finally:
    # Close cursor and connection
    cursor.close()
    connection.close()
