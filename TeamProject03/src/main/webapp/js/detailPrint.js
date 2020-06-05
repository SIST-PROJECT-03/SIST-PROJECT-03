var globalTarget;

var findId = (target)=>{
	return target;
}
/*
document.body.addEventListener('click',(e)=>{
	if(e.target.className === 'mainDetail' || e.target.className === 'hvr-inner'){
		var id = findId(e.target);
		globalTarget = e.target;
		ajaxFunc('movie-detail.do',getDetailData(id),printDetail);
	}
})
*/
var getDetailData = (id)=>{
	var data = '';
	data += 'movie_id=' + id;
	return data;
}

var printDetail = (data)=>{
	var target = globalTarget;
	var x = document.querySelectorAll('.movie-items')[1];
	
	var director = '';
	var actor = '';
	data.join.forEach((v,i)=>{
		if(v.role === '감독'){
			director += v.name + ' | ';
		}else{
			actor += v.name + ' | ';
		}
	})
	console.log('director : ' + director + ', actor : ' + actor);
	
	x.querySelector('.row .mainInner .title-hd h2').innerText = data.title;
	x.querySelector('.row .mainInnerDetail p:nth-child(2)').innerText = data.story;
	x.querySelector('.row .mainInnerDetail p:nth-child(5)').innerText = 
		'개요 : ' + data.genre +' | ' + data.country + ' | ' + data.opening_date;
	x.querySelector('.row .mainInnerImg').style.backgroundImage = 'url("' + data.poster; + '")';
	
	x.querySelector('.row .mainInnerDetail p:nth-child(2)').innerText = "감독 : " + director; 
	x.querySelector('.row .mainInnerDetail p:nth-child(3)').innerText = "배우 : " + actor;
	
}

var verticalBtnOfSlider = document.querySelector('.big-slider-info .vertical-btn');
verticalBtnOfSlider.addEventListener('click',(e)=>{
	//1. id를 찾는다
	var id = verticalBtnOfSlider.getAttribute('id');
	//2. url 접근
	location.href= "seriesSingle.do?movie_id=" + id;
})