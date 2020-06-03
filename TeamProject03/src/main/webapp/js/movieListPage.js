/**
 * 
 */

$(function(){	
	$('.pageButton').click(function(){
		var curPage = $(this).text();
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
})