<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 편집</title>
<link rel="stylesheet" href="profileEdit.css">

 <link rel="stylesheet" href="./css/font/font.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/layout.css">
</head>
<body>
  <div id="waccountWrap">
        <div class="waccount-wrap">
            <div id="waccountContainer">
                <h3> 개인 정보 수정 </h3>
                <div id="tabContent1" class="tab-content">
                    <h5>프로필 사진</h5>
                    <div class="profileimg-wrap">
                        <button type="button" id="resultProfileImg" class="profileimg" onclick="$('#uploadProfileImg').click();"><em style="background-image:url(https://static.wadiz.kr/assets/icon/profile-icon-2.png)"></em></button>
                        <p class="setting-profileimg">
                            <button type="button" onclick="$('#uploadProfileImg').click()" id="btn_updatePhoto">
                            
                             
                                <span>바꾸기</span>
                            
                            </button>
                            <button type="button" onclick="deletePhoto()" id="btn_deletePhoto">삭제</button>
                        </p>
                    </div>
                    <h5>이름</h5><input type="text" class="input-text" maxlength="50" id="position" placeholder="이름" value="">
                    <h5>나이</h5><input type="text" class="input-text" maxlength="50" id="position" placeholder="나이" value="">
                    <h5>성별</h5><input type="text" class="input-text" maxlength="50" id="position" placeholder="성별" value="">
                    <h5>휴대폰번호</h5><input id="mobileNumber" name="mobileNumber" type="tel" class=" input-text" placeholder="휴대폰 번호" value="">
                    <div id="mobileCheckBtn" class="mobileAuthBtn btn" data-status="check">
                        <a href="#" onclick="return false;">
                            <span class="inzeung">인증하기</span>
                        </a>
                    </div>
                    <h5>관심사</h5>
                    <p class="minimum3">최소 3개 이상 관심사를 선택해주세요</p>
                    <div class="check-list-wrap">
                        <ul>
                            
                            <li>
                                <input type="checkbox" id="interest_1" name="interestGroup" value="SRV0001_01">
                                <label class="input-check" for="interest_1"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>교환</label>
                            </li>
                            
                            <li>
                                <input type="checkbox" id="interest_2" name="interestGroup" value="SRV0001_02">
                                <label class="input-check" for="interest_2"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>피드작성</label>
                            </li>
                            
                            <li>
                                <input type="checkbox" id="interest_3" name="interestGroup" value="SRV0001_03">
                                <label class="input-check" for="interest_3"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>여행</label>
                            </li>
                            
                            <li>
                                <input type="checkbox" id="interest_4" name="interestGroup" value="SRV0001_04">
                                <label class="input-check" for="interest_4"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>함께해요</label>
                            </li>
                            
                            <li>
                                <input type="checkbox" id="interest_5" name="interestGroup" value="SRV0001_05">
                                <label class="input-check" for="interest_5"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>친목</label>
                            </li>
                            
                            <li>
                                <input type="checkbox" id="interest_6" name="interestGroup" value="SRV0001_06">
                                <label class="input-check" for="interest_6"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>정보</label>
                            </li>
                            
                            <li>
                                <input type="checkbox" id="interest_7" name="interestGroup" value="SRV0001_07">
                                <label class="input-check" for="interest_7"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>맛집</label>
                            </li>
                            
                            <li>
                                <input type="checkbox" id="interest_8" name="interestGroup" value="SRV0001_08">
                                <label class="input-check" for="interest_8"><i class="icon-radio-button-unchecked unchecked"></i><i class="icon-check-circle checked"></i>기타</label>
                            </li>
                            
                        </ul>
                    </div>
                    <br>
                    <h5>자기소개</h5>
                    <div class="textarea-wrap">
                        <textarea id="introduceme" maxlength="80"></textarea>
                    </div>







                </div>
            </div>
        </div>
    </div>
</body>
</html>