$(function(){
	var curPage = "";
	
	$('.pageButton').click(function(){
		curPage = $(this).text();
		console.log(curPage);
		$.ajax({
         type:'post',
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
	
	
	$('.selectRowSizeChange').change(function(){
		console.log($('.selectRowSizeChange').val());
		$('.rowSize').val($('.selectRowSizeChange').val());
		
		$.ajax({
         type:'post',
         url:'movieGridPrint.do',
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
         success:function(res){   
        	
            $('#movieGridPrint').html(res);
         }
      })   
   })
   $('.selectGenreChange').change(function(){
	  
      console.log($('.selectGenreChange').val());
      $('.genre').val($('.selectGenreChange').val());

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
         success:function(res){
        	$('#movieGridPrint').html(res);
    		
         }
      })   
   })
   
   $('.selectCountryChange').change(function(){
      console.log($('.selectCountryChange').val());
      $('.country').val($('.selectCountryChange').val());
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