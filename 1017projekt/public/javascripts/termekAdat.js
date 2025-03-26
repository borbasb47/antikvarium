function displayBookData(){
    var productId = getQueryVariable("id");
    fetch(`/1017projekt/api/termek.php?id=${productId}`)   
    .then(response => response.json())
    .then(adat => {
        console.log(adat)
        console.log(productId)
    })
    .catch(error => console.error('Hiba xd:', error));

}

document.addEventListener('DOMContentLoaded', displayBookData);
