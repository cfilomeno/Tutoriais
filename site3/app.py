import os, hashlib
from PIL import Image, ImageDraw
# pip install Pillow

from flask import Flask, flash, request, redirect, url_for, render_template,send_from_directory
from werkzeug.utils import secure_filename
import pandas as pd
import matplotlib.pyplot as plt

from bokeh.embed import components
from bokeh.plotting import figure, output_file
from bokeh.io import show, save, curdoc
from bokeh.layouts import column, layout, WidgetBox
from bokeh.models import ColumnDataSource, RangeTool, BoxSelectTool, HoverTool, Button, CustomAction, CustomJS, Column
from bokeh.models.widgets import Slider, CheckboxGroup, MultiSelect, Button, TableColumn
from bokeh.resources import INLINE


UPLOAD_FOLDER = 'uploads'

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


# @app.route('/site3/<filename>')
# def uploaded_file(filename):
#     filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
#
#     xrd = pd.read_csv(filepath, skipinitialspace=True, skiprows=134)
#     xrd.dropna(axis=1, inplace=True)
#
#     fig, ax = plt.subplots()
#     ax.plot(xrd['Angle'], xrd['Det1Disc1'], label=filename)
#     plt.legend()
#     generatedfilename = 'plot_' + filename + '.png'
#     plt.savefig(os.path.join('static', generatedfilename))
#     return render_template('page2.html', value=generatedfilename)


@app.route('/site3/<filename>')
def uploaded_file(filename):
    filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
    df = pd.read_csv(filepath, skipinitialspace=True, skiprows=134)
    df.dropna(axis=1, inplace=True)
    source = ColumnDataSource(df)

    p = figure(plot_height=800, plot_width=1200, toolbar_location="right", tools="save,xwheel_zoom,"
                                                                                 ",reset,crosshair",
               x_axis_type="linear", x_axis_location="below",
               background_fill_color='white', x_range=(df['Angle'].iloc[0], df['Angle'].iloc[-1]))

    p.add_tools(BoxSelectTool(dimensions='width'))
    p.add_tools(CustomAction(icon="/home/filomeno/Documentos/gitHub/fitdrx/site3/static/icon.png",
                             callback=CustomJS(code='alert("foo")')))

    p.scatter('Angle', 'Det1Disc1', source=source, legend_label=filename, color='green', size=0.2, alpha=0)
    p.line('Angle', 'Det1Disc1', source=source, legend_label=filename, line_color='green')
    p.yaxis.axis_label = 'I (U.A.)'
    p.xaxis.axis_label = '2theta (º)'
    button = Button(label='FIT', aspect_ratio=10, background='red',
                    align='center', button_type='primary',
                    width_policy='max')

    script, div = components(p)

    # cdn_js = CDN.js_files
    # cdn_css = CDN.css_files

    return render_template('page3.html', script=script, div=div)

    #    cdn_js=cdn_js,
    #    cdn_css=cdn_css)


if __name__ == "__main__":
    app.run(debug=True)
