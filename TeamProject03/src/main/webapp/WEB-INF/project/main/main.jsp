<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Basic need -->
	<title>BlockBuster</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
	<!-- Mobile specific meta -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone-no">
	
	<!-- CSS files -->
	<link rel="stylesheet" href="css/plugins.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/chat.css">

</head>
<body>

<!--preloading-->
<!--TeamProject03/src/main/java/com/sist/spring/MainController.java  -->
<!--end of preloading-->

<!-- BEGIN | Header -->
<!--login form popup-->
<!--end of login form popup-->
<!--signup form popup-->
<!--end of signup form popup-->
<tiles:insertAttribute name="header" />
<!-- END | Header -->

<!--begin of latest new v2 section-->
<tiles:insertAttribute name="home" />
<!--end of latest new v2 section-->

<!-- footer section-->
<tiles:insertAttribute name="footer" />
<!-- end of footer section-->
<div id="root"></div>

<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
<script src="js/ajax.js"></script>
<script src="js/detailPrint.js"></script>
<script src="js/celeb.js"></script>
<script src="js/movieList.js"></script>
<script src="js/newsdetail.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/0.14.0/react.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/0.14.0/react-dom.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.23/browser.min.js"></script> 
<script src="https://unpkg.com/socket.io-client@2.3.0/dist/socket.io.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/16.13.1/umd/react.production.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react-dom/16.13.1/umd/react-dom.production.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.23/browser.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-polyfill/7.10.1/polyfill.js"></script>  
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/babel">

const socket=io.connect('http://localhost:7777')

class App extends React.Component{

  constructor(props) {
    super(props);
    this.state = {
      logs: [] // 채팅 문자열 저장

    }
  }
    componentDidMount() {
        socket.on('chat_msg',(obj)=>{
            const log2=this.state.logs;
            log2.push(obj)
            this.setState({logs:log2})
        })
      var _this=this;
      axios.get('http://localhost:3355/released')
          .then(function (response) {
            _this.setState({movie:response.data})
          })
      $('div#chat').toggleClass('active');
      var $win = $(window);
      var top = $(window).scrollTop(); // 현재 스크롤바의위치값을 반환합니다.

      /*사용자 설정 값 시작*/
      var speed          = 1000;     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
      var easing         = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing
      var $layer         = $('div#chat_container'); // 레이어셀렉팅
      var layerTopOffset = 0;   // 레이어 높이 상한선, 단위:px
      $layer.css('position', 'absolute');
      /*사용자 설정 값 끝*/

      // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
      if (top > 0 )
        $win.scrollTop(layerTopOffset+top);
      else
        $win.scrollTop(0);

      //스크롤이벤트가 발생하면
      $(window).scroll(function(){

        var yPosition = $win.scrollTop()+300;
        if (yPosition< 0)
        {
          yPosition = $win.scrollTop()+300;
        }
        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
      });
  }

  render() {
    return(
        <React.Fragment>
          <div className={"row"}>
          </div>
          <ChatMain logs={this.state.logs}/>
        </React.Fragment>
    )
  }
}
class ChatMain extends React.Component{

  render(){
        const html=this.props.logs.map((m)=>
            <div className={"message right"}>
                <div className={"message-text"}>{m.message}</div>
            </div>
        )
    return(
        <div id={"chat_container"}>
          <div id={"chat"} className={"active"}>
            <div id="chat_title"><h1 id="chat_font">Chat</h1></div>
            <section className={"content"}>
              <div className={"message_content"}></div>
                {html}
            </section>
            <ChatForm/>
          </div>
        </div>
    )
  }
}
class ChatForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            message:''
        }
    }

        messageChange(e){
            this.setState({message: e.target.value})
        }
        send(e){
            if (e.key == 'Enter') {
                e.preventDefault(); // 이벤트 동작 정지 이벤트 처리후 제위치를 유지하기 위해 사용
                // 메세지 전송
                socket.emit('chat_msg', {
                    message: this.state.message
                })
                this.setState({message: ''})
            }
        }

        render()
        {
            return (
                <form action={""}>
                    <input id={"input_chat"} type={"text"}
                           onChange={this.messageChange.bind(this)}
                           onKeyPress={this.send.bind(this)}
                           value={this.state.message}
                    />
                </form>
            )
        }
}
ReactDOM.render(<App/>,document.getElementById('root'));
</script>
</body>
</html>