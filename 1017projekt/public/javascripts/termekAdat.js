
function displayBookData(){
    fetch('/1017projekt/api/termek.php')   
    .then(response => response.json())
    .then(adat => {
        console.log(adat)
        const cim=document.createElement("h2")
        cim.id="cim"
        cim.innerHTML=adat["cim"]

    })
}

displayBookData()