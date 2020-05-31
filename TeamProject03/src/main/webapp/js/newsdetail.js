$(function(){
	var i;
	
	$('.updateBtn').hover(function(){
		$(this).css('color','yellow');
		$(this).css('cursor','pointer');
	},function(){
		$(this).css('color','white');
		$(this).css('cursor','default');
	});
	
	$('.insertBtn').hover(function(){
		$(this).css('color','yellow');
		$(this).css('cursor','pointer');
	},function(){
		$(this).css('color','white');
		$(this).css('cursor','default');
	});
	
	$('.updateBtn').click(function(){
		$('.replyReplyInsert').hide();
		$('.replyUpdate').hide();
		
		i=$(this).attr('data-no');
		$('#u'+i).show();
	});
	
	$('.insertBtn').click(function(){
		$('.replyReplyInsert').hide();
		$('.replyUpdate').hide();
		
		i=$(this).attr('data-no');
		$('#r'+i).show();
	});
});