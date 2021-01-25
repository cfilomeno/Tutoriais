import os
import pandas as pd
from flask import Flask, request, redirect, url_for, render_template, send_from_directory
from werkzeug.utils import secure_filename
import json
import jinja2
from bokeh.plotting import figure, output_file
from bokeh.io import show, save, curdoc
from bokeh.layouts import column, layout, WidgetBox
from bokeh.models import ColumnDataSource, RangeTool, BoxSelectTool, HoverTool, Button, CustomAction, CustomJS, Column
from bokeh.models.widgets import Slider, CheckboxGroup, MultiSelect, Button, TableColumn
from bokeh.resources import INLINE


from bokeh.embed import components, file_html, server_document
from bokeh.resources import CDN, INLINE

UPLOAD_FOLDER = '/home/cleber/Documentos/GitHub/fitdrx/site2/templates'

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        file = request.files['file']
        filename = secure_filename(file.filename)
        file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        return redirect(url_for('uploaded_file', filename=filename))
    return render_template('index.html')


@app.route('/teste')
def teste():
    # button = Button(label='FIT', aspect_ratio=10, background='red',
    #                 align='center', button_type='primary',
    #                 width_policy='max')

    w1 = Button(label='FIT', aspect_ratio=10, background='red',
                    align='center', button_type='primary',
                    width_policy='max')


    # Get JavaScript/HTML resources
    script, div1 = components(WidgetBox(w1, width=500))

    # Get JavaScript/HTML resources

    js_resources = INLINE.render_js()
    css_resources = INLINE.render_css()
    return render_template('teste.html', js_resources=js_resources,
                           css_resources=css_resources,
                           script=script, div1=div1)


@app.route('/uploads/<filename>')
def uploaded_file(filename):
    filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)

    df = pd.read_csv(filepath, skipinitialspace=True, skiprows=134)
    df.dropna(axis=1, inplace=True)
    source = ColumnDataSource(df)

    p = figure(plot_height=500, plot_width=1200, toolbar_location="right", tools="save,xwheel_zoom,"
                                                                                 ",reset,crosshair",
               x_axis_type="linear", x_axis_location="below",
               background_fill_color=None, x_range=(df['Angle'].iloc[0], df['Angle'].iloc[-1]))

    p.add_tools(BoxSelectTool(dimensions='width'))
    p.add_tools(CustomAction(icon="/home/cleber/Documentos/GitHub/fitdrx/site2/templates/icon.png",
                             callback=CustomJS(code='alert("foo")')))

    p.scatter('Angle', 'Det1Disc1', source=source, legend_label=filename, color='green', size=0.2, alpha=0)
    p.line('Angle', 'Det1Disc1', source=source, legend_label=filename, line_color='green')
    p.yaxis.axis_label = 'I (U.A.)'
    p.xaxis.axis_label = '2theta (º)'
    button = Button(label='FIT', aspect_ratio=10, background='red',
                    align='center', button_type='primary',
                    width_policy='max')


    # select = figure(title='Selecionar pico',
    #                 plot_height=130, plot_width=1200, y_range=p.y_range,
    #                 x_axis_type="linear", y_axis_type=None,
    #                 tools="", toolbar_location=None, background_fill_color="#efefef")
    # range_tool = RangeTool(x_range=p.x_range)
    # range_tool.overlay.fill_color = "navy"
    # range_tool.overlay.fill_alpha = 0.2
    # select.line('Angle', 'Det1Disc1', source=df)
    # select.ygrid.grid_line_color = None
    # select.xgrid.grid_line_color = None
    # select.add_tools(range_tool)
    # select.toolbar.active_multi = range_tool


    script, div = components(button)

    # cdn_js = CDN.js_files
    # cdn_css = CDN.css_files

    return render_template('index.html',
                           script=script,
                           div=div)
        
                        #    cdn_js=cdn_js,
                        #    cdn_css=cdn_css)


if __name__ == "__main__":
    app.run(debug=True)
