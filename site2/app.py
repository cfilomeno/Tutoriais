import os
import pandas as pd
import matplotlib.pyplot as plt
from flask import Flask, flash, request, redirect, url_for, render_template,send_from_directory
from werkzeug.utils import secure_filename


UPLOAD_FOLDER = '/tmp'

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/uploads/<filename>')
def uploaded_file(filename):
    filepath = os.path.join(app.config['UPLOAD_FOLDER'],filename)
    
    df = pd.read_csv(filepath, skipinitialspace=True, skiprows= 134)
    df.dropna(axis=1, inplace = True)
    
    fig, ax = plt.subplots()
    ax.plot(df['Angle'], df['Det1Disc1'], label=filename, color='r')
    plt.legend()
    
    generatedfilename = 'pil_'+filename+'.png'
    plt.savefig(os.path.join(app.config['UPLOAD_FOLDER'],generatedfilename))
    return send_from_directory(app.config['UPLOAD_FOLDER'], generatedfilename)

@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        file = request.files['file']
        filename = secure_filename(file.filename)
        file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        return redirect(url_for('uploaded_file',
                                    filename=filename))
    return render_template('index.html')

if __name__ == "__main__":
    app.run(debug=True)