"use strict"

// HTML2CANVAS API

const saveImage = document.querySelector('#saveImage');
const captureModel = document.querySelector('.capture_model');
const mod = document.querySelectorAll('.mod');
const overlay = document.querySelector('.overlay');

const captureExport = function() {
  html2canvas(document.querySelector('#imageBodyId'), {
    logging: true,
    letterRendering: 1,
    allowTaint: true,
    useCORS: true,
  }).then((canvas) => {
    captureModel.appendChild(canvas).classList.add('canvas');
  });

  mod.forEach((e) => e.classList.remove('hidden'));
};

const removeCapture = function () {
  captureModel.removeChild(captureModel.firstElementChild);

  mod.forEach((e) => e.classList.add('hidden'));
};

saveImage.addEventListener('click', captureExport);
overlay.addEventListener('click', removeCapture);
window.addEventListener('keydown', (e) => {
  if (e.key === 'Escape') {
    removeCapture();
  }
});

// INPUT TEXT

const inputFields = document.querySelectorAll('.inputText');

const updateInputValue = function (e) {
  const t = e.target.dataset.name;
  document.querySelector(`.${t}`).textContent = e.target.value;
};

inputFields.forEach((e) => {
  e.addEventListener('input', updateInputValue);
});

// BACKGROUND COLOR CHANGE

// pink
const colorChangePink = document.querySelector('.colorPink');
const changePink = function () {
  document.getElementById('imageBodyId').style.background = '';
  document.getElementById('imageBodyId').style.backgroundColor = "#fce1ee";
}
colorChangePink.addEventListener('click', changePink);

//skyblue
const colorChangeSkyblue = document.querySelector('.colorSkyblue');
const changeSkyblue = function () {
  document.getElementById('imageBodyId').style.background = '';
  document.getElementById('imageBodyId').style.backgroundColor = "#c1d9e8";
}
colorChangeSkyblue.addEventListener('click', changeSkyblue);

//purple
const colorChangePurple = document.querySelector('.colorPurple');
const changePurple = function () {
  document.getElementById('imageBodyId').style.background = '';
  document.getElementById('imageBodyId').style.backgroundColor = "#d4c1e6";
}
colorChangePurple.addEventListener('click', changePurple);

//yellow
const colorChangeYellow = document.querySelector('.colorYellow');
const changeYellow = function () {
  document.getElementById('imageBodyId').style.background = '';
  document.getElementById('imageBodyId').style.backgroundColor = "#fce042";
}
colorChangeYellow.addEventListener('click', changeYellow);

//random
const randomSolidBtn = document.querySelector('.colorRandom');
const randomRGB = function () {
  let rgb = '';
  rgb += (Math.floor(Math.random() * 100 + 2) + 100)
    .toString(16)
    console.log(rgb);
  rgb += (Math.floor(Math.random() * 100 +2) + 100)
    .toString(16)
    console.log(rgb);
  rgb += (Math.floor(Math.random() * 100 +2) + 100)
    .toString(16)
    console.log(rgb);
  return rgb;
};
const changeBackground = function () {
  const rgb = randomRGB();
  document.getElementById('imageBodyId').style.background = '';
  document.getElementById('imageBodyId').style.backgroundColor = `#${rgb}`;
};
randomSolidBtn.addEventListener('click', changeBackground);

// random gradient
const randomGradientBtn = document.querySelector('.colorRandomGradient');
const changeRandomBgGradient = function () {
  const rgb1 = randomRGB();
  const rgb2 = randomRGB();
  document.getElementById('imageBodyId').style.background = `linear-gradient(to bottom, #${rgb1}, #${rgb2})`;
} 
randomGradientBtn.addEventListener('click', changeRandomBgGradient);

//image URL
const imgBtn = document.querySelector('.bgURL');
const imageUrl = function () {
    let imgUrl = prompt('이미지 URL을 입력해주세요');
    document.getElementById('imageBodyId').style.background = '';
    document.getElementById('imageBodyId').style.background = `url('${imgUrl}')`;
    document.getElementById('imageBodyId').style.backgroundSize = 'cover';
    document.getElementById('imageBodyId').style.backgroundRepeat = 'no-repeat';
    document.getElementById('imageBodyId').style.backgroundPosition = 'center';
}
imgBtn.addEventListener('click', imageUrl);

// reset background color
const colorChangeReset = document.querySelector('.resetColor');
const changeReset = function () {
  document.getElementById('imageBodyId').style.background = '';
  document.getElementById('imageBodyId').style.backgroundColor = "#efefef";
}
colorChangeReset.addEventListener('click', changeReset);

//FONT COLOR CHANGE

//font color black
const fontColorBlack = document.querySelector('.fontColorBlack');
const changeFontBlack = function () {
  document.getElementById('title').style.color = "black";
  document.getElementById('subtitle').style.color = "black";
  document.getElementById('sign').style.color = "black";
}
fontColorBlack.addEventListener('click', changeFontBlack);

//font color white
const fontColorWhite = document.querySelector('.fontColorWhite');
const changeFontWhite = function () {
  document.getElementById('title').style.color = "#ffffff";
  document.getElementById('subtitle').style.color = "#ffffff";
  document.getElementById('sign').style.color = "#ffffff";
}
fontColorWhite.addEventListener('click', changeFontWhite);

//font color grey
const fontColorGrey = document.querySelector('.fontColorGrey');
const changeFontGrey = function () {
  document.getElementById('title').style.color = "#b5b5b5";
  document.getElementById('subtitle').style.color = "#b5b5b5";
  document.getElementById('sign').style.color = "#b5b5b5";
}
fontColorGrey.addEventListener('click', changeFontGrey);

//font color blue
const fontColorBlue = document.querySelector('.fontColorBlue');
const changeFontBlue = function () {
  document.getElementById('title').style.color = "#0c2c63";
  document.getElementById('subtitle').style.color = "#0c2c63";
  document.getElementById('sign').style.color = "#0c2c63";
}
fontColorBlue.addEventListener('click', changeFontBlue);

//font color purple
const fontColorPurple = document.querySelector('.fontColorPurple');
const changeFontPurple = function () {
  document.getElementById('title').style.color = "#5222a3";
  document.getElementById('subtitle').style.color = "#5222a3";
  document.getElementById('sign').style.color = "#5222a3";
}
fontColorPurple.addEventListener('click', changeFontPurple);

//font color green
const fontColorGreen = document.querySelector('.fontColorGreen');
const changeFontGreen = function () {
  document.getElementById('title').style.color = "#4bc97a";
  document.getElementById('subtitle').style.color = "#4bc97a";
  document.getElementById('sign').style.color = "#4bc97a";
}
fontColorGreen.addEventListener('click', changeFontGreen);

//font color random
const fontColorRandom = document.querySelector('.fontColorRandom');
const changeFontRandom = function () {
  const rgb = randomRGB();
  document.getElementById('title').style.color = `#${rgb}`;
  document.getElementById('subtitle').style.color = `#${rgb}`;
  document.getElementById('sign').style.color = `#${rgb}`;
}
fontColorRandom.addEventListener('click', changeFontRandom);

//font color reset
const resetFontColor = document.querySelector('.resetFontColor');
const resetFont = function () {
  document.getElementById('title').style.color = "grey";
  document.getElementById('subtitle').style.color = "grey";
  document.getElementById('sign').style.color = "grey";
}
resetFontColor.addEventListener('click', resetFont);
