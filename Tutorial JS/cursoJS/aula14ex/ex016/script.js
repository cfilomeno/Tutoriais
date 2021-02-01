function contar() {
    let inicio = document.querySelector('input#numini')
    let fim = document.querySelector('input#numfim')
    let passo = document.querySelector('input#numpasso')
    let res = document.querySelector('div#res')
    
    if (inicio.value.length == 0 ||
        fim.value.length == 0 ||
        passo.value.length == 0) {
        //inicio.value > fim.value) {
        res.innerHTML = 'Impossível contar'
        //window.alert('[ERRO] Verifique os números e tente novamente!')        
    } else {        
        res.innerHTML = `Contando.. `
        let i = Number(inicio.value)
        let f = Number(fim.value)
        let p = Number(passo.value)
        if (p <= 0) {
            window.alert('Passo inválido! Consdierando PASSO 1')
            p = 1
        }        
        if (i < f) {
            // contagem crescente
            for (let c = i; c <= f; c += p) {
            res.innerHTML += `${c} \u{1F449}`        
            }
        
        } else {
            // contagem regressiva
            for(let c = i; c >= f; c -= p) {
                res.innerHTML += `${c} \u{1F449}`
            }
        }
        res.innerHTML += `\u{1F3C1}`               
    }
    
}