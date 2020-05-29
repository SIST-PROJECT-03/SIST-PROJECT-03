$(function(){

	$('.selectChange').change(function(){
		console.log($('.selectChange').val());
		$.ajax({
			type:'post',
			url:'movieGridPrint.do',
			data:{
					'range':$('.selectChange').val(),
					'rowSize':$('.rowSize').val()
			  	 },
			success:function(res){
				
				console.log(res);
				$('.range').val($('.selectChange').val());
				$('#movieGridPrint').html(res);
			}
		})	
	})
})
