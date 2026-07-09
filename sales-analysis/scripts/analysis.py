import pandas as pd
df=pd.read_csv('../dataset/sales.csv')
df['Revenue']=df['quantity']*df['unit_price']
print('Total Revenue:',df['Revenue'].sum())
print(df.groupby('product')['Revenue'].sum().sort_values(ascending=False))
