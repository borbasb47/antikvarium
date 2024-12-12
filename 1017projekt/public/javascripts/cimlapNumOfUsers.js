function numOfUsers(){
    fetch('/api/cimlapNumOfUsers.php').then()
    var numOfUsers=document.getElementById("numOfUsers")
    .then(adat => adat.json())
    .then(adat => {
    numOfUsers.innerHTML="Csatlakozz az oldalunk "+adat+" felhasználójához"
    })
}

numOfUsers()