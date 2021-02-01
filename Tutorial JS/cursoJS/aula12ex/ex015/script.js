function verificar(){
    var data = new Date()
    var ano = data.getFullYear()    
    var fano = window.document.querySelector('input#datana')
    var res = window.document.getElementById('res')              
    if (fano.value.length == 0 || fano.value > ano) {
        window.alert('[ERRO] Verifique os dados e tente novamente!')
    } else {              
        var fsex = document.getElementsByName('genero')
        var idade = ano-Number(fano.value)
        var genero = ''            
        var img = document.createElement('img')
        img.setAttribute('id', 'foto')
        if (fsex[0].checked) {
            genero = 'homem'
            document.body.style.background = 'cyan'
            
            if (idade >= 0 && idade < 12) {
                img.setAttribute('src', 'foto-menino.png')                  
            } else if (idade >= 12 && idade < 21) {
                img.setAttribute('src', 'foto-jovem-homem.png')
            } else if (idade >= 21 && idade < 60) {
                img.setAttribute('src', 'foto-homem.png')            
            } else {
                img.setAttribute('src', 'foto-idoso.png')
            }
        } else if (fsex[1].checked) {
            genero = 'mulher'
            document.body.style.background = 'pink'
            res.innerHTML = `Detectamos uma mulher com ${idade} anos`
            if (idade >= 0 && idade < 12) {
                img.setAttribute('src', 'foto-menina.png')                  
            } else if (idade >= 12 && idade < 21) {
                img.setAttribute('src', 'foto-jovem-mulher.png')
            } else if (idade >= 21 && idade < 60) {
                img.setAttribute('src', 'foto-mulher.png')            
            } else {
                img.setAttribute('src', 'foto-idosa.png')
            }
        }
        res.innerHTML = `Detectamos ${genero} com ${idade} anos`
        res.style.textAlign = 'center'
        res.appendChild(img)
    }

}

/*if (idade > 0 && sexom == masc) {
    //bom dia!
    img.src = 'foto-menino.png'
    document.body.style.background = '#e2cd9f'
} else if (idade >= 12 && hora < 18){
    //boa tarde!
    img.src = 'fototarde.png'
    document.body.style.background = '#b9846f'
} else {
    //boa noite!
    img.src = 'fotonoite.png'
    document.body.style.background = '#515154'
}*/