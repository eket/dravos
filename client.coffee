    canvas = document.getElementById('myCanvas');
    c = canvas.getContext('2d');

    c.beginPath();
    c.moveTo(100, 150);
    c.lineTo(450, 50);
    c.stroke();

      var im = new Image();
      im.src = 'avos_logo.src';

      imageObj.onload = function() {
        context.drawImage(imageObj, 69, 50);
      };
