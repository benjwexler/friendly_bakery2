searchBar = document.getElementById("searchBar");
main1 = document.getElementById("main1");
submitButton = document.getElementById("submitButton");

searchForm = document.getElementById("searchForm");

searchIconContainer = document.getElementById("searchIconContainer");
searchIconContainer.addEventListener("click", displaySearchBar);
searchIconContainer.addEventListener("click", function(event){
    // console.log("clicked");
    if (searchForm.value.length > 0) {
    submitButton.click()
    }
    
});


// submitButton.addEventListener("click", dropdown);

expandedMenu = document.getElementById("expandedMenu")

menuContainer = document.getElementById("menuContainer");
menuContainer.addEventListener("click", dropdown);

switcher = "off"

function dropdown(){
    if (switcher === "off"){
        expandedMenu.style.display = "inline";
        // searchBar.style.background = "white";

        switcher = "on"
    } else {
        expandedMenu.style.display = "none"; 
        switcher = "off"
    }
}

toggle = "off";

function displaySearchBar(){
    if (toggle === "off"){
        searchBar.style.display = "inline";
        searchBar.style.background = "white";
        main1.style.background = "linear-gradient(to right, rgba(60, 26, 138, 0.755), rgba(143, 114, 210, 0.755))";
        toggle = "on"
    } else {
        // searchBar.style.display = "none"; 
        toggle = "off"
    }


}