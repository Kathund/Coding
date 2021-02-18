//Global Defence System

var missileImage = 'https://groklearning-cdn.com/modules/4TQCjD2F82oHY2nhKbJ7L3/rocket2.png';
var collisionImage = 'https://groklearning-cdn.com/modules/wqPdjpNopABLRT8oLLYCYU/explosion2.png';
var motherShipImage = 'https://groklearning-cdn.com/modules/R6YxUkGzXLKR7nYY39XhBM/mothership.png';

//missile stuff
var missile;
var missileWidth = 21;
var missileHeight = 21;
var missileFlightDirection = -1;

var vg = -20;   //exit speed of gases
var m0 = 100;   //initial mass of rocket
var deltaM = 1; //mass loss of rocket per time interval
var t = 0;      //time
var collision = false; // collision detection

var previewWidth = 1024;
var previewHeight = 740;
var finishingLineY = 600;
let gdsSpaceshipHeight = 20;
let gdsSpaceshipWidth = 20;
let gdsYSpeed = 10;
let shipsLanded = false;
let missionAccomplished = false;
var motherShip=null;

if ( typeof ySpeed.type === 'undefined')
    gdsYSpeed = 10;
else gdsYSpeed = ySpeed.type;


var el = document.createElement('p');
el.id = 'score';
el.innerHTML = '0';
document.getElementsByTagName('body')[0].appendChild(el);

el = document.createElement('p');
el.id = 'distanceToTravel';
el.innerHTML = '0';
document.getElementsByTagName('body')[0].appendChild(el);

el = document.createElement('div');
el.style.position = 'absolute';
el.style.width = '100%';
el.style.top = finishingLineY + 'px';
document.getElementsByTagName('body')[0].appendChild(el);

let line = document.createElement('hr');
el.appendChild(line);


function createMissile(left, top) {
    missile = document.createElement('img');
    missile.src = missileImage;
    missile.className = 'missile';
    missile.style.top = top + 'px';
    missile.style.left = left + 'px';
    document.body.appendChild(missile);
    fadeIn(missile, 100);
    vg = -20;
    if (left < window.innerWidth / 2)
        missileFlightDirection = 1;
    else
        missileFlightDirection = -1;
    //missileFlightDirection=Math.pow(-1,getRndInteger(-1, 1));
}

function getRndInteger(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function moveMissile() {
    if (m0 / (m0 - t * deltaM) <= 0) {
        t = 0.95 * m0 / deltaM;
    }
    let vM = vg * Math.log(m0 / (m0 - t * deltaM)); // yes, this is indeed rocket science
    t = t + 0.2;
    let top = parseInt(missile.style.top) + vM;
    missile.style.top = top + 'px';
    let left = parseInt(missile.style.left) + missileFlightDirection;
    missile.style.left = left + 'px';
    collisionDetection();
    determineEndGoal();

    if ((top <= -missileHeight) || (top > finishingLineY + missileHeight)) {
        document.body.removeChild(missile);
        createMissile(Math.floor(Math.random() * previewWidth), finishingLineY + missileHeight);
        collision = false;
    }
}

function collisionDetection() {
    let missileX = parseInt(missile.style.left);
    let missileY = parseInt(missile.style.top);

    let spaceships = document.querySelectorAll('.spaceship');
    let iterator = spaceships.length;
    while ((iterator > 0) && (!collision)) {
        let spaceship = spaceships[iterator - 1];
        let spaceshipX = parseInt(spaceship.style.left);
        let spaceshipY = parseInt(spaceship.style.top);
        if (!((spaceshipX + gdsSpaceshipWidth < missileX) || (missileX + missileWidth < spaceshipX) || (spaceshipY + gdsSpaceshipHeight < missileY) || (missileY + missileHeight < spaceshipY))) {
            vg = 2 * t; //spaceship drops
            t = 0;
            missile.src = collisionImage;
            fadeOut(missile, 2000);
            document.body.removeChild(spaceship);
            document.getElementById("score").innerHTML = document.querySelectorAll('.spaceship').length;
            collision = true;
            if (document.querySelectorAll('.spaceship').length == 0) {
                alert('Earth has defeated the Space Invaders! Don\'t give up and try again!');
                exit();
            }
        }
        let spaceshipBottom = parseInt(spaceship.style.bottom);
        if (spaceshipBottom > finishingLineY) {
            stop();
        }
        iterator--;
    }
}

function determineEndGoal() {
    let maxY = 0;
    let spaceships = document.querySelectorAll('.spaceship');
    for (let spaceship of spaceships) {
        if (parseInt(spaceship.style.top) > maxY) {
            maxY = parseInt(spaceship.style.top);
        }
    }
    let fleetSize = document.querySelectorAll('.spaceship').length;
    let message = "Fleet size: ";
    document.getElementById("score").innerHTML = message.concat(fleetSize.toString());

    let distanceToTravel = finishingLineY - maxY;
    message = "Landing in: ";
    document.getElementById("distanceToTravel").innerHTML = message.concat(distanceToTravel.toString());
    if (distanceToTravel <= 0) {
        shipsLanded = true;
        if (typeof xSpeed !== 'undefined')
            xSpeed = 0;
        document.body.removeChild(missile);
    }
}

function fadeIn(el, time) {
    el.style.opacity = 0;
    el.style.display = "block";

    var last = +new Date();
    var tick = function () {
        el.style.opacity = +el.style.opacity + (new Date() - last) / time;
        last = +new Date();

        if (+el.style.opacity < 1) {
            (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16)
        }
    };

    tick();
}

function fadeOut(el, time) {
    el.style.opacity = 1;
    el.style.display = "block";

    var last = +new Date();
    var tick = function () {
        el.style.opacity = +el.style.opacity - (new Date() - last) / time;
        last = +new Date();

        if (+el.style.opacity > 0) {
            (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16)
        }
    };

    tick();
}

function newMotherShip(imageUrl) {
    motherShip = document.createElement('img');
    motherShip.src = imageUrl;
    motherShip.className = 'mothership';
    motherShip.style.left = '50%';
    motherShip.style.top = '10px';
    motherShip.style.marginLeft = '-160px';

    motherShip.style.position = 'absolute';
    document.body.appendChild(motherShip);
}

function gds() {
    if (!shipsLanded) {
        moveMissile();
        requestAnimationFrame(gds);
    }

    if (shipsLanded && !missionAccomplished) {
        if (!motherShip) {
            newMotherShip(motherShipImage);
            moveMotherShip();
        }
    }
}

createMissile(previewWidth / 2, finishingLineY + missileHeight);
gds();

function moveMotherShip() {
    let top = parseInt(motherShip.style.top);
    motherShip.style.top = top + 1 + 'px';
    if (top === 100)
        missionAccomplished = true;
    if (!missionAccomplished)
        requestAnimationFrame(moveMotherShip);
    else {
        alert('The Space Invaders have landed! Commencing water extraction. Victory ! Long Live the Zargan Empire !');
    }
}
function alert(text)
{
    let iDiv=document.createElement('div');
    iDiv.className='alert';
    iDiv.innerHTML=text;
    document.body.appendChild(iDiv);

    let theSpan=document.createElement('span');
    theSpan.className='closebtn';
    theSpan.setAttribute('onclick', 'this.parentElement.style.display=\'none\';');
    theSpan.innerHTML='&times';
    iDiv.appendChild(theSpan);
}