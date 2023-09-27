import pandas as pd

df = pd.read_csv('extracted_data.csv')

# Perform data transformation (example: filter data where 'column_name' equals 'some_value')
filtered_df = df[df['value'] >= 40.0]

filtered_df.to_csv('transformed_data.csv', index=False)

print("Data transformed successfully.")
