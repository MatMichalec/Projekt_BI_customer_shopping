import pandas as pd
import os

df = pd.read_csv("dataset/customer_shopping_data.csv")

df.drop_duplicates(inplace=True)

df['invoice_date'] = pd.to_datetime(df['invoice_date'], dayfirst=True)

df['total_value'] = df['price'] * df['quantity']
df['day_of_week'] = df['invoice_date'].dt.day_name()
df['month'] = df['invoice_date'].dt.month_name()

output_dir = "data/processed"
os.makedirs(output_dir, exist_ok=True)

df.to_csv(f"{output_dir}/customer_shopping_data_processed.csv", index=False)

print(df.head())
