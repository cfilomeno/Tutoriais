import os, hashlib
from PIL import Image, ImageDraw
# pip install Pillow
from flask import Flask, flash, request, redirect, url_for, render_template,send_from_directory
from werkzeug.utils import secure_filename

UPLOAD_FOLDER = 'uploads'

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/uploads/<filename>')
def uploaded_file(filename):
    filepath = os.path.join(app.config['UPLOAD_FOLDER'],filename)
    
    #AQUI FICA O PROCESSAMENTO DO ARQUIVO RECEBIDO.
    
    the_hash =  hashlib.md5(open(filepath,'rb').read()).hexdigest()
    img = Image.new('RGB',(250,30),color=(73,109,137))
    d = ImageDraw.Draw(img)
    d.text((10,10),the_hash,fill=(255,255,0))
    generatedfilename = 'pil_'+filename+'.png'
    img.save(os.path.join(app.config['UPLOAD_FOLDER'],generatedfilename))

    #AQUI TERMINA O PROCESSAMENTO DO ARQUIVO RECEBIDO.
    #O RESULTADO FOI A IMAGEM COM O NOME generatedfilename 
    #SALVEI DENTRO DO DIRETORIO DE UPLOADS.
    
    return send_from_directory(app.config['UPLOAD_FOLDER'],
                               generatedfilename)

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
