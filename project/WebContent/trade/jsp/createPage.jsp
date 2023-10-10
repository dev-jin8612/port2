
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드작성</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/trade/css/createPage.css" />
</head>
<body>
	<main id="create">
		<form action="${pageContext.request.contextPath}/insert.trade?infor=insert&status=ti&memberid=1&imgnum=1" id="form" method="post" enctype="multipart/form-data">
			<div id="root">
				<div id="ALContainer" class="ALcontainer">
					<div class="ALmain">
						<div id="ALContents" class="ALcontents">
							<div id="container" class="CLcontainer">
								<div class="FSContainer_container">
									<nav class="DNcontainer">
										<!-- 헤더 구간 -->
										<div class="ANB_container">
											<div class="ANB_maker">
												<div class="A_avatar A_xs">
													<span></span>
												</div>
												<!-- 여기는 js로 함께냐 교환이냐에 따라 달라질 듯 -->
												<!-- 교환하기 작성 / 함께해요 작성 등으로 -->
												<div>피드 작성하기!</div>
											</div>
											<div class="ANB_buttonGroup">
												<div class="PreviewButton_container">
													<button
														class="Button_button Button_primary Button_md Button_circular for_hidden"
														type="button">
														<span class="Button_children">미리 보기</span>
													</button>
												</div>
												<button
													class="Button_button Button_primary Button_contained Button_md Button_circular for_hidden"
													type="button">
													<span class="Button_children">임시 저장</span>
												</button>
												<div class="AB_container for_hidden" role="button">
													<img class="AB_icon"
														src="https://static.wadiz.kr/studio/funding/static/media/announcement.56f4b8e3.svg"
														alt="" aria-hidden="true" /><span
														class="Badge_container AB_badge"></span>
												</div>
												<button
													class="Button_button Button_tertiaryGrey Button_text Button_md"
													type="button">
													<span><span class="Button_children" onclick="back()">나가기</span></span>
												</button>
											</div>
										</div>
									</nav>
									<div class="HYcontainer">
										<div class="HYcontents">
											<!-- 여기는 js로 함께냐 교환이냐에 따라 달라질 듯 -->
											<!-- 교환하기 작성 / 함께해요 작성 등으로 -->
											<h2 class="FSContainer_title">피드 작성</h2>
											<!-- 여기도 같이 바꿔주기 -->
											<p class="FSContainer_description">메이커님의 프로젝트를 소개해 주세요.</p>
										</div>
									</div>
									<div class="SMAN_container SMAN_disable">제목 작성</div>
										<div>
											<input type="text" id="title" name="title" class="trade_title">
										</div>								
									<!-- <form class="wz form FSFormContainer_form Form_form"> -->
										<div class="Loader_loader Form_loader"></div>
										<section class="Section_container" style="max-width: 630px">
											
											<div class="Section_content">
												<div class="SVIF_container">
													<div class="field Form_field required IFF_field StoryImageField_field">
														<div class="IFF_buttonWrapper">
														<br>
															<label class="wz label IFBlabel Label_label"><button
																	type="button" class="wz button gray IFBbutton">
																	<i class="icon-camera-o" aria-hidden="true">등록하기</i>
																</button>
																<div class="wz input right IFBinput">
																	<input accept="image/JPG,image/JPEG,image/GIF,image/PNG"
																		id="uploadFile" name="uploadFile" placeholder="" type="file" />
																</div> </label> <em class="helper error"></em> <em
																class="helper IFF_helper"> 2MB 이하의 JPG, JPEG, GIF,
																PNG 파일 해상도 630x400 픽셀 이상 여러 장 등록돼요. </em>
														</div>
													</div>
												</div>
											</div>
										</section>
										<div class="SMAN_container SMAN_disable">내용 작성</div>
										<section class="Section_container SEWI_container"
											style="max-width: 720px">
											<textarea rows="" cols="" name="content" id="content" class="trade_content"></textarea>
										</section>
									<!-- </form> -->
									<div class="FSContainer_btnWrapper">
										<button
											class="Button_button Button_primary Button_contained Button_lg"
											type="submit" style="width: 420px; max-width: 100%" onclick="save()">
											<span><span class="Button_children">저장하기</span></span>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</main>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="../js/createPage.js"></script>
	<script src="../js/createPage_back.js"></script>
	<script type="text/javascript">
		
		function save() {
    		/* var infor = "insert";
			var title = document.getElementById("title").value;
			var content = document.getElementById("content").innerText;
			var status = "ti";
			var memberid = "1";
			
			location.href = "${pageContext.request.contextPath}/insert.trade?infor=" + infor + "&title=" + title + "&status=" + status +"&memberid=" + memberid; */
			document.getElementById("form").submit();
		}
		
		
		function back() {
			location.href = "${pageContext.request.contextPath}/trade/jsp/list.jsp"
		}
	</script>
</body>
</html>