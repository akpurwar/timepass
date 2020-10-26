<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src ="jquery-3.5.1.js"></script>
    <script src="sem.js"></script> 
</head>
<body>
    <header>

    </header>

    <section>
       <nav>

       </nav>

       <div>


       </div>

      <aside>

      </aside>

    </section>

    <footer>

    </footer>
</body>
</html>










$(document).ready(function(){

    $('body').css("padding","0").css("margin","0").css("background-color","gray").css('overflow','hidden');


    $('header').height('100px');
    $('header').width("100%");
    $('header').html('<h4>Cybage</h4>');
    $('header').css('background-color','lightblue').css('display','flex').css('text-indent','780px');
    
    $('section').height('800px');
    $('section').width("100%");
    $('section').css('background-color','lightgreen').css('display','flex')

    $('nav').height('800px');
    $('nav').width("20%");
    $('nav').css('background-color','yellow').css('display','flex')

    $('div').height('800px');
    $('div').width("60%");
    $('div').css('background-color','lightgreen').css('display','flex')


    $('aside').height('800px');
    $('aside').width("20%");
    $('aside').css('background-color','yellow').css('display','flex')


 
    $('footer').height('100px');
    $('footer').width("100%");
    $('footer').html('<h4>Cybage Copy right </h4>');
    $('footer').css('background-color','lightblue').css('display','flex')


});
