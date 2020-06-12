import pandas as pd
from bokeh.plotting import figure, output_file
from bokeh.io import show
from bokeh.layouts import column
from bokeh.models import ColumnDataSource, RangeTool
from bokeh.plotting import figure


output_file('difratograma2.html')
df = pd.read_csv("LCCu1.txt", skipinitialspace=True, skiprows=134)
df.dropna(axis=1, inplace=True)
ColumnDataSource(df)


p = figure(plot_height=300, plot_width=800, tools="xpan", toolbar_location=None,
           x_axis_type="linear", x_axis_location="above",
           background_fill_color="#efefef", x_range=(df['Angle'].iloc[0], df['Angle'].iloc[-1]))

p.line('Angle', 'Det1Disc1', source=df)
p.yaxis.axis_label = 'I (U.A.)'
p.xaxis.axis_label = '2theta (º)'


select = figure(title="Selecionar pico",
                plot_height=130, plot_width=800, y_range=p.y_range,
                x_axis_type="linear", y_axis_type=None,
                tools="", toolbar_location=None, background_fill_color="#efefef")

range_tool = RangeTool(x_range=p.x_range)
range_tool.overlay.fill_color = "navy"
range_tool.overlay.fill_alpha = 0.2

select.line('Angle', 'Det1Disc1', source=df)
select.ygrid.grid_line_color = None
select.add_tools(range_tool)
select.toolbar.active_multi = range_tool

show(column(p, select))
