from bokeh.io import show
import pandas as pd
from bokeh.plotting import figure, output_file
from bokeh.layouts import column
from bokeh.models import ColumnDataSource, RangeTool

output_file('difratograma.html')
df = pd.read_csv("LCCu1.txt", skipinitialspace=True, skiprows=134)
df.dropna(axis=1, inplace=True)
ColumnDataSource(df)

p = figure()
p.line('Angle', 'Det1Disc1', source=df, legend_label='LCCu1', color='green')
p.xaxis.axis_label = '2theta'
p.yaxis.axis_label = 'Int'

select = figure(title="Arraste os cantos para selecionar o pico",
                plot_height=130, plot_width=800, y_range=p.y_range,
                x_axis_type=None, y_axis_type=None,
                tools="", toolbar_location=None, background_fill_color="#efefef")

range_tool = RangeTool(x_range=p.x_range)
range_tool.overlay.fill_color = "navy"
range_tool.overlay.fill_alpha = 0.2

select.line('Angle', 'Det1Disc1', source=df)
select.ygrid.grid_line_color = None
select.add_tools(range_tool)
select.toolbar.active_multi = range_tool

show(column(p, select))

show(p)
