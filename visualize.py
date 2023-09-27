import pandas as pd
import plotly.express as px
import plotly.io as pio

# Load the transformed data
df = pd.read_csv('transformed_data.csv')


fig = px.scatter(
    df,
    x='company_name',
    y='product_name',
    size='value',
    color='product_name',
    title='Interactive Scatter Plot of High-Value Companies and Products (2015-2020)',
    labels={'company_name': 'Company Name', 'product_name': 'Product Name'},
    hover_data={'value': True}
)

# Save the plot as an image
pio.write_image(fig, 'scatter_plot.png')
