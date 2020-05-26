/**
 * 
 */

$(function(){
	$('.celebSearchButton').click(function(){
		console.log('aa');
		$.ajax({
			type:'post',
			url:'celebSearchList.do?name=a',
			success:function(data){
				console.log(data);
			}
		})
	})
})