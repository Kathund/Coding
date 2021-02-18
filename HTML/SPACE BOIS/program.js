var ySpeedMax = 10;
var gap = 10;
var spaceshipsPerRow = 10;
var startLeft = 150;
var startTop = 0;
var spaceshipWidth = 20;
var spaceshipHeight = 20;
var rowsOfSpaceships = 5;
var xSpeed = 1;
var ySpeed = 0;
var xDistance = 1;
var xDistanceMin=300
var rowNumber = 0;

function createSpaceship(left, top) {
    let spaceship = document.createElement('img');
    spaceship.src = 'spaceship' + (rowNumber % 7 + 1) + '.png'; // little trick to show a different spaceship in each row
    document.body.appendChild(spaceship);
    spaceship.className = 'spaceship';
    spaceship.style.top = top + 'px';
    spaceship.style.left = left + 'px';
}

function createRow(left, top) {
    for (let spaceshipCounter = 0; spaceshipCounter < spaceshipsPerRow; spaceshipCounter++) {
        createSpaceship(left, top);
        left = left + spaceshipWidth + gap;
    }
    rowNumber++;
}

function createGrid() {
    let top = startTop;
    for (let row = 0; row < rowsOfSpaceships; row++) {
        createRow(startLeft, top);
        top = top + spaceshipHeight + gap;
    }
}

function moveSpaceships() {
    let spaceships = document.querySelectorAll('.spaceship');
    for (let spaceship of spaceships) {
        let left = parseInt(spaceship.style.left) + xSpeed;
        spaceship.style.left = left + 'px';
        let top = parseInt(spaceship.style.top) + ySpeed;
        spaceship.style.top = top + 'px';
    }
}

function spaceInvaders() {
    if (xDistance == 0 || xDistance == xDistanceMin) { // when the fleet hits the left or right boundary
        xSpeed *= -1; // change direction
        ySpeed = ySpeedMax; // move down
    }
    else {
        ySpeed = 0;
    }
    moveSpaceships();
    xDistance += xSpeed;
    requestAnimationFrame(spaceInvaders);
}

createGrid();
spaceInvaders();