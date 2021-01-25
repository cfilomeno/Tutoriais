import os, hashlib
from PIL import Image, ImageDraw
# pip install Pillow
from flask import Flask, flash, request, redirect, url_for, render_template,send_from_directory
from werkzeug.utils import secure_filename
import pandas as pd
import matplotlib.pyplot as plt

UPLOAD_FOLDER = 'uploads'

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER


@app.route('/site3/<filename>')
def uploaded_file(filename):
    filepath = os.path.join(app.config['UPLOAD_FOLDER'], filename)

    # AQUI FICA O PROCESSAMENTO DO ARQUIVO RECEBIDO.

    xrd = pd.read_csv(filepath, skipinitialspace=True, skiprows=134)
    xrd.dropna(axis=1, inplace=True)

    fig, ax = plt.subplots()
    ax.plot(xrd['Angle'], xrd['Det1Disc1'], label=filename)
    plt.legend()
    generatedfilename = 'plot_' + filename + '.png'
    plt.savefig(os.path.join(app.config['UPLOAD_FOLDER'], generatedfilename))

    # AQUI TERMINA O PROCESSAMENTO DO ARQUIVO RECEBIDO.
    # O RESULTADO FOI A IMAGEM COM O NOME generatedfilename
    # SALVEI DENTRO DO DIRETORIO DE UPLOADS.

    return render_template('page2.html')
    #return send_from_directory(app.config['UPLOAD_FOLDER'], generatedfilename)


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
