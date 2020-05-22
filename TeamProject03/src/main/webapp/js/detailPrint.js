var globalTarget;

var findId = (target)=>{
	//var id = target.getAttribute("id");
	id = 35901;
	return id;
}

document.body.addEventListener('click',(e)=>{
	if(e.target.className === 'mainDetail' || e.target.className === 'hvr-inner'){
		var id = findId(e.target);
		globalTarget = e.target;
		ajaxFunc('movie-detail.do',getDetailData(id),printDetail);
	}
})

var getDetailData = (id)=>{
	var data = '';
	data += 'movie_id=' + id;
	return data;
}

var printDetail = (data)=>{
	var target = globalTarget;
	var x = document.querySelectorAll('.movie-items')[1];
	
	x.querySelector('.row .mainInner .title-hd h2').innerText = data.title;
	x.querySelector('.row .mainInnerDetail p:nth-child(2)').innerText = data.story;
	x.querySelector('.row .mainInnerDetail p:nth-child(5)').innerText = 
		'개요 : ' + data.genre +' | ' + data.country + ' | ' + data.opening_date;
	x.querySelector('.row .mainInnerImg').style.backgroundImage = 'url("' + data.poster; + '")';
}