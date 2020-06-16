import os

import pandas as pd
import json

from bokeh.command.subcommands.json import JSON
from flask import Flask, request, redirect, url_for, render_template, send_from_directory
from werkzeug.utils import secure_filename

from bokeh.plotting import figure, output_file
from bokeh.io import show, save
from bokeh.layouts import column
from bokeh.models import ColumnDataSource, RangeTool
from bokeh.embed import components, file_html, server_document, json_item
from bokeh.resources import CDN


UPLOAD_FOLDER = '/home/cleber/Meus Projetos/fitdrx/site2/templates'

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


@app.route('/uploads/<filename>')
def uploaded_file(filename):
    filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)

    df = pd.read_csv(filepath, skipinitialspace=True, skiprows=134)
    df.dropna(axis=1, inplace=True)
    ColumnDataSource(df)

    output_file('/home/cleber/Meus Projetos/fitdrx/site2/templates/dif.html', title='Difratograma')

    p = figure(plot_height=500, plot_width=1200, toolbar_location="right",
               x_axis_type="linear", x_axis_location="below",
               background_fill_color="#efefef", x_range=(df['Angle'].iloc[0], df['Angle'].iloc[-1]))

    p.line('Angle', 'Det1Disc1', source=df, legend_label=filename)
    p.yaxis.axis_label = 'I (U.A.)'
    p.xaxis.axis_label = '2theta (º)'

    select = figure(title='Selecionar pico',
                    plot_height=130, plot_width=1200, y_range=p.y_range,
                    x_axis_type="linear", y_axis_type=None,
                    tools="", toolbar_location=None, background_fill_color="#efefef")
    range_tool = RangeTool(x_range=p.x_range)
    range_tool.overlay.fill_color = "navy"
    range_tool.overlay.fill_alpha = 0.2
    select.line('Angle', 'Det1Disc1', source=df)
    select.ygrid.grid_line_color = None
    select.xgrid.grid_line_color = None
    select.add_tools(range_tool)
    select.toolbar.active_multi = range_tool

    save(column(p, select))

    return render_template('page2.html')
# @app.route('/')
# def index():
#     plot = uploaded_file()
#     script, div = components(plot)
#     return render_template("dif.html", script=script, div=div)
#


if __name__ == "__main__":
    app.run(debug=True)
