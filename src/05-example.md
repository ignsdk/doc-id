##Contoh Program
###2.1 Spawn API
**Javascript :**
~~~javascript
/*Import Module Sys dari IGNSDK runtime*/
var sys = ign.sys();

$(document).ready(function(){
  $('#exec').click(function(){
    /*Ambil isian perintah
    dari text input id (#) "cmd"*/
    var cmd = $('#cmd').val();
    /*perintah di kirim ke runtime
    IGNSDK untuk di eksekusi*/
    sys.exec(cmd);
    sys.out.connect(function(out){
      /*stdout dari perintah ditulis
      kedalam element id=out*/
      $('#out').prepend(out+"<br>");
    })
  });

  $('#kill').click(function(){
    /*Hentikan proses*/
    sys.kill();
  });
});
~~~
**HTML** :
~~~html
<body>
  <input type="text" value="ping google.com" id="cmd">
  <input type="submit" value="exec" id="exec">
  <input type="submit" value="kill" id="kill"><br>
  <div id="out"></div>
</body>
~~~
<end>
