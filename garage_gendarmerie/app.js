window.addEventListener('load', (event) => {
    const navbar = document.querySelector('.navbar')
    const container = document.querySelector('.container')
    const vehicules = document.querySelector('.vehicles-list')
    vehicules.style.visibility = 'hidden';
    navbar.style.visibility = 'hidden';
    const imgbackground = document.querySelector('.imgbackground')
    container.style.visibility = 'hidden';
    imgbackground.style.visibility = 'hidden';
   


})  







  window.addEventListener('message', (event) => {
    const navbar = document.querySelector('.navbar')
    const container = document.querySelector('.container')
    const vehicules = document.querySelector('.vehicles-list')
    vehicules.style.visibility = 'visible';
    navbar.style.visibility = 'visible';
    const imgbackground = document.querySelector('.imgbackground')
    container.style.visibility = 'visible';
    imgbackground.style.visibility = 'visible';



})  













/*     window.addEventListener('load', (event) => {

    img.style.visibility = 'hidden'
}) */

/*     window.addEventListener('load', (event) => {
    const img = document.querySelector('.')
    img.style.visibility = 'hidden'
}) */






document.addEventListener('DOMContentLoaded', () => {
    const gignButton = document.getElementById('GIGN');
    const gignList = document.getElementById('vehic-gign');
    const voitureButton = document.getElementById('GARA');
    const motoButton = document.getElementById('MOTO');
    const psigButton = document.getElementById('PSIG');
    const voitureList = document.getElementById('vehic-voiture');
    const motoList = document.getElementById('vehic-moto');
    const psigList = document.getElementById('vehic-psig');


    psigButton.addEventListener('click', () => {
        gignList.classList.remove('active');
        gignButton.classList.remove('active');
        motoButton.classList.remove('active');
        motoList.classList.remove('active');
        psigButton.classList.add('active');
        voitureButton.classList.remove('active');
        voitureList.classList.remove('active');
        psigList.classList.add('active');
    });

    voitureButton.addEventListener('click', () => {
        gignList.classList.remove('active');
        gignButton.classList.remove('active');
        psigButton.classList.remove('active');
        psigList.classList.remove('active');
        voitureButton.classList.add('active');
        motoButton.classList.remove('active');
        voitureList.classList.add('active');
        motoList.classList.remove('active');
        
    });

    motoButton.addEventListener('click', () => {
        gignList.classList.remove('active');
        gignButton.classList.remove('active');
        psigButton.classList.remove('active');
        psigList.classList.remove('active');
        motoButton.classList.add('active');
        voitureButton.classList.remove('active');
        motoList.classList.add('active');
        voitureList.classList.remove('active');
    });

    gignButton.addEventListener('click', () => {
        gignList.classList.add('active');
        gignButton.classList.add('active');
        psigButton.classList.remove('active');
        psigList.classList.remove('active');
        motoButton.classList.remove('active');
        voitureButton.classList.remove('active');
        motoList.classList.remove('active');
        voitureList.classList.remove('active');
    });
});

  




window.addEventListener('message', (event) => {
    const container = document.querySelector('.container')
    let data = event.data
    if (data.action === 'open') {
        container.style.visibility = 'visible';
    } else if (data.action === 'close') {
        container.style.visibility = 'hidden'; 
    }
})



window.addEventListener('message', (event) => {
    const navbar = document.querySelector('.navbar')
    let data = event.data
    if (data.action === 'open') {
        navbar.style.visibility = 'visible';
    } else if (data.action === 'close') {
        navbar.style.visibility = 'hidden';
    }
})


window.addEventListener('message', (event) => {
    const imgbackground = document.querySelector('.imgbackground')
    let data = event.data
    if (data.action === 'open') {
        imgbackground.style.visibility = 'visible'; 
    } else if (data.action === 'close') {
        imgbackground.style.visibility  = 'hidden'
    }
})


window.addEventListener('message', (event) => {
    const vehicules = document.querySelector('.vehicles-list')
    let data = event.data
    if (data.action === 'open') {
        vehicules.style.visibility = 'visible'; 
    } else if (data.action === 'close') {
        vehicules.style.visibility  = 'hidden'
    }
})




   


window.addEventListener('keydown', (event) => {
    if (event.key === 'Escape') {
        fetch('https://garage_gendarmerie/closeall'
    )}
  
})


document.querySelector('#cexitf').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/duster')
})

document.querySelector('#prif').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/pexp17')
})

document.querySelector('#ppartner12_gn').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/ppartner12_gn')
})


document.querySelector('#meg').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/rmegane4e18_gn')
})

document.querySelector('#pexp').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/pexp')
})



document.querySelector('#Cox').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/Exitvehicle')
})



document.querySelector('#ymt').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/ymt')
})

document.querySelector('#bmw').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/bmwx')
})

document.querySelector('#volv').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/volv')
})

document.querySelector('#sharan').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/sharan')
})

document.querySelector('#octavia').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/oct')
})

document.querySelector('#rme').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/rme')
})

document.querySelector('#ppsig').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/ppsig')
})


document.querySelector('#pe2008_ban').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/pe2008_ban')
})

document.querySelector('#rmaster312_ban').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/rmaster312_ban')
})

document.querySelector('#tlc200_gign').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/tlc200_gign')
})

document.querySelector('#skodiaq_gn').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/skodiaq_gn')
})

document.querySelector('#ffocus3sw_gn').addEventListener('click', (event) => {
    fetch('https://garage_gendarmerie/ffocus3sw_gn')
})