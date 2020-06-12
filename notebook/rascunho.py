import pandas as pd
from bokeh.plotting import figure, output_file, show
from bokeh.models import ColumnDataSource, RangeTool

output_file('difratograma.html')
df = pd.read_csv("LCCu1.txt", skipinitialspace=True, skiprows=134)
df.dropna(axis=1, inplace=True)
ColumnDataSource(df)

p = figure(plot_height=600, plot_width=800)
p.line('Angle', 'Det1Disc1', source=df, legend_label='LCCu1', color='grey')
p.xaxis.axis_label = '2theta'
p.yaxis.axis_label = 'Int'

show(p)
