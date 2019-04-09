
$(document).ready(function(){
    //(document).ready(function()の中にjqueryの処理を書く
  
   //文字を赤くする処理
  $("#sample").css("color","#d9534f");
  
  //クリックしたらアラートの処理
  $('#button').on('click', function() {
    alert("クリックされました");
  });

  $('select').change(function() {
    if ($(this).val() != '') {
      window.location.href = $(this).val();
    }
  });

});


//スピナーがくるくる回る処理
$(function() {
    var h = $(window).height();
    $('#wrap').css('display','none');
    $('#loader').height(h).css('display','block');
   });
     
   $(window).on("load", function() { //読み込み完了で実行
    $('#loader').delay(600).fadeOut(500);
    $('#wrap').css('display', 'block');
   });
     
   //10秒経過でロード画面強制非表示
   $(function(){
    setTimeout('stopload()',10000);
   });
   function stopload(){
    $('#wrap').css('display','block');
    $('#loader').delay(600).fadeOut(500);
}



