var numOfUsers=document.getElementById("numOfUsers")
function NumOfUsers(){
    fetch('./public/api/cimlapNumOfUsers.php')   
        .then(adat => adat.json())
            .then(function(adat) {
                console.log(adat)
                //numOfUsers.innerHTML="Csatlakozz az oldalunk "+adat+" felhasználójához"
    })
}

NumOfUsers()