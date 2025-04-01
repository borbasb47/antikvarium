function displayBookData(){
    const queryString = window.location.search;
    console.log(queryString);
    const urlParams = new URLSearchParams(queryString);
    const productId = urlParams.get('id')
    console.log(productId);
   
    fetch(`/1017projekt/api/termek.php?id=${productId}`)   
    .then(response => response.json())
    .then(adat => {
        console.log(adat)
        console.log(productId)
        document.getElementById("cim").innerHTML+=adat.cim
        document.getElementById("leiras").innerHTML+=adat.osszefoglalo
        document.getElementById("szerzo").innerHTML+=adat.alkoto
        document.getElementById("kiado").innerHTML+=adat.forgalmazo
        document.getElementById("megjelenes").innerHTML+=adat.megjelenes
        document.getElementById("allapot").innerHTML+=adat.allapot
        document.getElementById("nyelv").innerHTML+=adat.nyelv
        const xd=document.getElementById("hossz").innerHTML+=adat.hossz
        document.getElementById("borito").innerHTML+=adat.borito
        document.getElementById("meret").innerHTML+=adat.meret
        document.getElementById("ar").innerHTML+=adat.ar

        if(adat.tipus=="könvy"){
            xd.innerHTML+=" oldal"
        }
        else{
            xd.innerHTML+=" perc"
        }


        document.createElement("productPicture").src=adat.kepURL
        
    })
    .catch(error => console.error('Hiba xd:', error));

}

document.addEventListener('DOMContentLoaded', displayBookData);
