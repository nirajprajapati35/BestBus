<!--JQuery File 
	============================================ -->
	<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>

	<!--Popo-Main JQuery File 
	============================================ -->
	<script type="text/javascript" src="js/popo-main.js"></script>
	
	<!--Main JQuery File 
	============================================ -->
	<script type="text/javascript" src="js/main.js"></script>

    <!--Popper File 
  	============================================ -->
  	<script type="text/javascript" src="js/popper.min.js"></script>

	<!--Bootstrap File 
	============================================ -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<!--Carousel JQuery File 
  	============================================ -->
	
<script type="text/javascript" src="js/carousel-timeout.js"></script>
	 



	<script type="text/javascript">
$(document).ready(function(){
     $("#bootstrapslider").carousel({
         interval : 3000,
         pause: false
     });
});
</script>
<script type="text/javascript">
var elementsix = 6;
(function()
{
   $('.carousel-six .carousel-item').each(function()
   {
       var itemToClone = $(this);
       for (var i = 1; i < elementsix; i++)
       {
           itemToClone = itemToClone.next();
           if (!itemToClone.length)
           {
               itemToClone = $(this).siblings(':first');
           }
           itemToClone.children(':first-child').clone()
               .addClass("cloneditem-" + (i))
               .appendTo($(this));
       }
   });
}());
</script>
  <script src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/additional-methods.js"></script>

<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>


 