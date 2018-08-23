/*function loginCheck(){
	if(document.frm.userid.value.length==0){
		alert("아이디를 써 주세여")
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value==""){
		
}	
	
}*/

function loginCheck() {
	if(document.frm.userid.value.length == 0){
		alert("아이디를 써주세요");
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value == ""){
		alert("암호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}
	return true;
}

function idCheck(){
    if(document.frm.userid.value == ""){
        alert("아이디를 입력해 주세요.");
        document.frm.userid.focus();
        return ;    
    }
    
    // var는 통합 타입 : 모든 타입을 var로 받는다.
    var url = "idCheck.do?userid="+document.frm.userid.value;
    
    // 테두리 - 중복 체크용
    // A : url 요청값(뷰 페이지를 담고 있어야 한다.)
    // B : 페이지의 타이틀(프레임의 이름)
    // C : 프레임 설정하기
    var setting = "toolbar=no, menubar=no, scrollbars=yes, resizable=no,"+
                "width=450, height=200";
    
    // #20] IdCheckServlet.java 서블릿으로 이동! get방식 이동
    //             userid를 파라미터에 담았다.
    window.open(url, "_blank_1", setting);
    
}

//파라미터 쓸 때 타입 없이 변수만 쓰면 해당 값을 넘겨받을 수 있다.)
function idOk(userid){
    // join.jsp를 뭐라고 부를까? -> opener
    // opener안에 document가 속해있기 때문에 document 생략가능.
    opener.frm.userid.value = userid;
    
    // 나중에 submit할 때, 데이터 유효성 검토할 거다.
    // reid의 value여부로 id체크 결과를
    // 따질 수 있다.
    opener.frm.reid.value = userid;
    
    // 열려있는 창 _blank_1을 닫아라.
    self.close();
    
    //#30] join.jsp의 중복체크 버튼으로 가자!
    
}
function joinCheck(){
	if(document.frm.name.value.length == 0){
		alert("이름을 써주세요");
		frm.name.focus();
		return false;
	}
	if(document.frm.userid.value.length==0){
		alert("아이디를 써주세요");
		frm.userid.focus();
		return false;
	}
	
	 if(document.frm.userid.value.length < 4){
	        alert('id를 4글자 이상 입력하세요');
	        frm.userid.focus();
	        return false;
	    }
	    if(document.frm.pwd.value.length == 0){
	        alert('비번을 입력하세요');
	        frm.pwd.focus();
	        return false;
	    }
	    if(document.frm.pwd.value != document.frm.pwd_check.value){
	        alert('비번이 일치하지 않습니다.');
	        frm.pwd_check.focus();
	        return false;
	    }
	    if(document.frm.reid.value.length == 0){
	        alert('중복체크를 해야 합니다.');
	        frm.userid.focus();
	        return false;
	    }
	    
	
	return true;
	
}


function deleteCheck(userid){
    var url = "memberDelete.do?userid="+userid;
    
    var setting = "toolbar=no, menubar=no, scrollbars=yes, resizable=no,"+
    "width=450, height=200";
    
    window.open(url, "_blank_2", setting);
}











