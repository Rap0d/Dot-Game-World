var c = document.getElementById("game");
var ctx = c.getContext("2d");
var start_time;
var end_time;
var play_time;
start_time = new Date().getTime();
var player = {
    y: 0,
    x: 5,
    die: function () {
        fadeIO();
        player.alive = false;
        player.y = 0;
        end_time = new Date().getTime();
        play_time = (end_time - start_time) / 1000;
        document.getElementById("overlay").style.display = "block";
        setTimeout(function () { document.getElementById("overlay").style.opacity = 1; }, 25);
        document.getElementById("the_score").innerText = game.score;
        document.getElementById("the_time").innerText = play_time;//게임 스코어 날리는 부분 
    },
    respawn: function () {
        start_time = new Date().getTime();
        game.score = 0;
        genBaddies();
        player.x = 5;
        player.alive = true;
        document.getElementById("overlay").style.opacity = 0;
        setTimeout(function () { document.getElementById("overlay").style.display = "none"; }, 200);
    },
    alive: true
}
var game =
    {
        baddies: [],
        particles: [],
        score: 0
    }

function fadeIO() {
    c.style.opacity = 0;
    setTimeout(function () { c.style.opacity = 1 }, 200);
}

function sizeWindow() {
    c.width = document.body.clientWidth || self.innerWidth;
    c.height = document.body.clientHeight || self.innerHeight;
}
sizeWindow();

function random(min, max) {
    return Math.random() * (max - min) + min;
}

var mouseX = 0,
  mouseY = 0,
  keys = [],
  mousePressed = false,
  menu = false;

document.addEventListener("mousemove", function (e) {
    mouseX = e.clientX;
    mouseY = e.clientY;
});
document.addEventListener("keydown", function (e) {
    keys[e.keyCode] = true;
});
document.addEventListener("keyup", function (e) {
    keys[e.keyCode] = false;
});

for (var a = 0; a < 50; a++) {
    game.particles.push({ x: random(0, c.width), y: random(0, c.height), size: random(5, 15) });
}
function genBaddies() {
    game.baddies = [];
    for (var a = 0; a < 6; a++) {
        game.baddies.push({ x: random(c.width / 2, c.width), y: random(0, c.height), size: random(40, 60) });
    }
}

function draw() {
    ctx.clearRect(0, 0, c.width, c.height); //움직이는 막대기
    ctx.fillStyle = "#b73131";
    //ctx.fillRect(200, c.height/2 - 5, 15, 10);
    ctx.fillRect(200, c.height / 2 - 5, 30, 20);

    var ri = random(0, 20); //뒤에 불같은 부분
    ctx.fillStyle = "#261b68";
    ctx.fillRect(200 - ri, c.height / 2 - 5, ri, 20);

    ctx.fillStyle = "#2f775c"; //스코어 텍스트 색깔
    ctx.font = "15px arial";
    ctx.fillText("Score: " + game.score, 15, 20);

    for (var part in game.particles) {
        ctx.fillStyle = "#d8c42b"; //배경 사각형 파티클 충돌X
        ctx.fillRect(game.particles[part].x, game.particles[part].y, game.particles[part].size, game.particles[part].size);
        game.particles[part].x -= player.x + 20 - game.particles[part].size;
        if (game.particles[part].x < -game.particles[part].size) {
            game.particles[part].x = c.width;
            game.particles[part].y = random(-game.particles[part].size, c.height);
        }
        game.particles[part].y -= player.y;
        if (game.particles[part].y < -game.particles[part].size) {
            game.particles[part].y = c.height;
        }
        if (game.particles[part].y > c.height) {
            game.particles[part].y = -game.particles[part].size;
        }
    }
    for (var bd in game.baddies) {
        ctx.fillStyle = "#49bf22"; //충돌하는 파티클.
        ctx.fillRect(game.baddies[bd].x, game.baddies[bd].y, game.baddies[bd].size, game.baddies[bd].size);

        game.baddies[bd].x -= player.x + 30 - game.baddies[bd].size / 2;
        if (game.baddies[bd].x < -50) {
            game.baddies[bd].x = c.width;
            game.baddies[bd].y = random(-50, c.height);
        }
        game.baddies[bd].y -= player.y;
        if (game.baddies[bd].y < -50) {
            game.baddies[bd].y = c.height;
        }
        if (game.baddies[bd].y > c.height) {
            game.baddies[bd].y = -50;
        }

        if (game.baddies[bd].x <= 200 && game.baddies[bd].x >= -game.baddies[bd].size + 30 && game.baddies[bd].y >= c.height / 2 - 5 - game.baddies[bd].size && game.baddies[bd].y <= c.height / 2 + 5 && player.alive) {
            player.die();
        }
    }

    if (keys[38]) {
        player.y -= 1;
    }
    if (keys[40]) {
        player.y += 1;
    }
    //player.y *= 0.95;
    player.y *= 0.95; //상하로 움직이는 속도

    if (player.alive) {
        game.score++;
        if (game.score > 0 && game.score < 700) {
            player.x += 0.01;
        }
        if (game.score > 700 && game.score < 1400) {
            player.x += 0.03;
        }
        if (game.score > 1400 && game.score < 2100) {
            player.x += 0.06;
        }
        if (game.score > 2100 && game.score < 2800) {
            player.x += 0.09;
        }
    }
};

fadeIO();
genBaddies();
setInterval(draw, 20);