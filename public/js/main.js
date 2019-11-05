// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let button     =  document.querySelectorAll('.seeMore'),
        lightBox   = document.querySelector('.lightBox');

    function getUserData(event) {
        // kill the default a tag behavior (dont navigate anywhere)
        event.preventDefault(); 
        // debugger;
        let url = `/users/${this.getAttribute('href')}`; // /1

        fetch(url) // go the the data
            .then(res => res.json()) // parse the json result into a plain object
            .then(data => {
                console.log("my database result js: ", data);

                parseUserData(data[0]);
            })
            .catch((err) => {
                console.log(err);
            })
    }

    function parseUserData(item) { // person is the databas result
        let targetDiv = document.querySelector('.lbContent');
        
        let itemContent = `
        <img class="lbImage" src="images/${item.Image}" alt="${item.Name} Image">
        <h3 class="lbName">${item.Name}</h3>
        <p>${item.Description}</p>
        <h4 class="color">Colour: ${item.Colour}</4>
        <h4 class="price">${item.Price}</h4>
        `;

        targetDiv.innerHTML = itemContent;
        lightBox.classList.add('lightBoxOn');

        TweenLite.from(targetDiv, 1.2, {y:50, opacity: 0, delay:0.1});
    }
    
    button.forEach(button => button.addEventListener('click', getUserData));
    lightBox.querySelector('.lbClose').addEventListener('click', function(){
        lightBox.classList.remove('lightBoxOn');
    });
    
})();