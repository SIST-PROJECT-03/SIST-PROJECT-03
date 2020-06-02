$(function(){
	var curPage = "";
	
	$('.pageButton').click(function(){
		curPage = $(this).text();
		console.log(curPage);
		$.ajax({
         type:'post',
         async:false,
         url:'movieGridPrint.do',
         data:{
               'genre':$('.genre').val(),
               'range':$('.range').val(),
               'rowSize':$('.rowSize').val(),
               'country':$('.country').val(),
               'grade':$('.grade').val(),
               'page':curPage
               },
         success:function(res){   
            $('#movieGridPrint').html(res);
        
         }
	   })   
	})
	
	$('.rowSizeSelect').change(function(){
		console.log("rowsizeselect");
		$('.rowSize').val($('.rowSizeSelect'));
		
		$.ajax({
         type:'post',
         url:'movieGridPrint.do',
         async:false,
         data:{
               'genre':$('.genre').val(),
               'range':$('.range').val(),
               'rowSize':$('.rowSize').val(),
               'country':$('.country').val(),
               'grade':$('.grade').val(),
               
               },
         success:function(res){   
            $('#movieGridPrint').html(res);
        
         }
	   })   
	})
	
	$('.selectRangeChange').change(function(){
      $('.range').val($('.selectRangeChange').val());
      
      $('#movieGridPrint').children().remove();
      $.ajax({
         type:'post',
         async:false,
         url:'movieGridPrint.do',
         data:{
               'genre':$('.genre').val(),
               'range':$('.range').val(),
               'rowSize':$('.rowSize').val(),
               'country':$('.country').val(),
               'grade':$('.grade').val()
               },
         success:function(res){   
        	
            $('#movieGridPrint').html(res);
         }
      })   
   })
   $('.selectGenreChange').change(function(){
	  $('.filter').children().remove();
      console.log($('.selectGenreChange').val());
      $('.genre').val($('.selectGenreChange').val());
      var ajax_last_num = 0; 
     var current_ajax_num = ajax_last_num;


      $.ajax({
         type:'post',
         url:'movieGridPrint.do',
         data:{
             'genre':$('.genre').val(),
             'range':$('.range').val(),
             'rowSize':$('.rowSize').val(),
             'country':$('.country').val(),
             'grade':$('.grade').val()
             },
         beforeSend:function(res)
         {
        	 ajax_last_num = ajax_last_num + 1;
         },  
         success:function(res){
        	if(current_ajax_num == ajax_last_num - 1)
        	{
        		 $('#movieGridPrint').html(res);
    		}
         }
      })   
   })
   
   $('.selectCountryChange').change(function(){
      console.log($('.selectCountryChange').val());
      $('.country').val($('.selectCountryChange').val());
      $.ajax({
         type:'post',
         sync:false,
         url:'movieGridPrint.do',
         data:{
               'genre':$('.genre').val(),
               'range':$('.range').val(),
               'rowSize':$('.rowSize').val(),
               'country':$('.country').val(),
               'grade':$('.grade').val()
               },
         success:function(res){
        	
            $('#movieGridPrint').html(res);

         }
      })   
   })
      $('.selectGradeChange').change(function(){
      console.log($('.selectGradeChange').val());
      $('.grade').val($('.selectGradeChange').val());
      $.ajax({
         type:'post',
         async:false,
         url:'movieGridPrint.do',
         data:{
               'genre':$('.genre').val(),
               'range':$('.range').val(),
               'rowSize':$('.rowSize').val(),
               'country':$('.country').val(),
               'grade':$('.grade').val()
               },
         success:function(res){
            $('#movieGridPrint').html(res);

         }
      })   
   })
   
   
})