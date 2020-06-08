
var detailWrap = document.querySelector('.mywrap');
var targetDetailForm;
var sliderDetailLight = false;
var listData = [false,false,false,false,false,false,false]; // 1,2,3,4,5,6,7
detailWrap.addEventListener('click',(e)=>{
	// 데이터 가져오기
	console.log(e.target);
	if(e.target.className.indexOf('myclclcl') != -1){
		// 1. 해당하는 폼을 찾는다
		var detailFormArr = document.querySelectorAll('.detail-slider');
		detailFormArr.forEach((v,i)=>{
			if(v.getAttribute('data') === e.target.getAttribute('data')){
				// 찾았따!
				targetDetailForm = v;
				if(listData[i] === false){
					listData[i] = true;
				} else {
					var id = e.target.getAttribute('data_id');
					var verticalBtnOfDetail = targetDetailForm.querySelector('.vertical-btn');
					if((id === verticalBtnOfDetail.getAttribute('id'))){
						listData[i] = false;
					}
				}
			}
			
		})
		var x = document.querySelector('.big-slider-info');
		if(sliderDetailLight === false){
			x.style.display = "none";
		}else{
			x.style.display = "block";
		}
		
		var id = e.target.getAttribute('data_id');
		var verticalBtnOfDetail = targetDetailForm.querySelector('.vertical-btn');
		verticalBtnOfDetail.setAttribute('id',id);
		console.log('id : ' + id);
		verticalBtnOfDetail = targetDetailForm.querySelector('.vertical-btn');
		verticalBtnOfDetail.addEventListener('click',(e)=>{
			// 1. id를 찾는다
			var id = verticalBtnOfDetail.getAttribute('id');
			// 2. url 접근
			location.href= "seriesSingle.do?movie_id=" + id;
		})
		ajaxFunc('movie-detail.do',getDetailData(id),printDetailData);
	}
	var detailFormArr = document.querySelectorAll('.detail-slider');
	detailFormArr.forEach((v,i)=>{
		if(listData[i] === false){
			v.style.display = 'none';
		}else{
			v.style.display = 'block';
		}
	})
	
})


var printDetailData = (data)=>{
	var target = targetDetailForm;
	var x = targetDetailForm;
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


var verticalBtnOfDetail;
