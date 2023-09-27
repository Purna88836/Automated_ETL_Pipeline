import pandas as pd

df = pd.read_csv('extracted_data.csv')

# Perform data transformation (example: filter data where 'column_name' equals 'some_value')
product_names_of_interest = ['TV', 'Earphones', 'Laptops']

filtered_df = df[(df['year'] >= 2015) & (df['year'] <= 2020) & (df['value'] >= 96)]

filtered_df.to_csv('transformed_data.csv', index=False)

print("Data transformed successfully.")