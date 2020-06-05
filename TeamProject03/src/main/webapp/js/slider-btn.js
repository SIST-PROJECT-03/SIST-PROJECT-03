
var slider = document.querySelector('.sliderv2');
var sliderDetailLight = false;

slider.addEventListener('click',(e)=>{
	// 데이터 가져오기
	if(e.target.className.indexOf('slider-btn-wrapper') != -1 || e.target.className === 'slider-btn-area'){
		var id = e.target.getAttribute('data-movie_id');
		var verticalBtnOfSlider = document.querySelector('.big-slider-info .vertical-btn');
		verticalBtnOfSlider.setAttribute('id',id);
		ajaxFunc('movie-detail.do',getDetailData(id),printSliderDetail);
	} else if(e.target.className.indexOf('slick-arrow') != -1){
		sliderDetailLight = false;
		var x = document.querySelector('.big-slider-info');
		x.style.display = "none";
	}
})


var printSliderDetail = (data)=>{
	var target = globalTarget;
	var x = document.querySelector('.big-slider-info');
	
	if(sliderDetailLight === false){
		sliderDetailLight = true;
		x.style.display = "block";
	}else{
		sliderDetailLight = false;
		x.style.display = "none";
	}
	
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


