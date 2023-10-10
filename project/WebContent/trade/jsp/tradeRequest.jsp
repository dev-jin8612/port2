<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교환해요 요청</title>

<link rel="stylesheet" href="../css/modal.css" />
<link rel="stylesheet" href="../css/createPage.css" />
<link rel="stylesheet" href="../css/tradeRequest.css" />
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/trade.trade?infor=trade"
		id="form" method="post" enctype="multipart/form-data">
		<div id="root">
			<div id="ALContainer" class="ALcontainer">
				<div class="ALmain">
					<div id="ALContents" class="ALcontents">
						<section class="Page_container">
							<div class="Page_content">
								<section class="Section_container spacing-6"
									style="max-width: 630px">
									<div class="Section_header spacing-4">
										<h2 class="Section_title Section_isRequired">교환 요청작성</h2>
									</div>
									<div class="Section_content">
										<div class="TextField_textField TextField_md">
											<label></label>
											<div class="TextField_field">
												<section class="Section_container SEWI_container"
													style="max-width: 720px">
													<div class="Section_content">
														<div class="Editor_container SEWI_editor">
															<div class="wysiwyg-editor">
																<div class="fr-box fr-basic fr-top" role="application">
																	<div class="fr-wrapper show-placeholder" dir="auto">
																		<textarea rows="" cols="" name="content" id="content"
																			class="trade_content"></textarea>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</section>
											</div>
										</div>
									</div>
								</section>
								<section class="Section_container spacing-6"
									style="max-width: 630px">
									<div class="Section_header">
										<h2 class="Section_title Section_isRequired">교환할 제품 이미지</h2>
										<div class="Section_guide"></div>
									</div>
									<div class="Section_description">
										<ul>
											<li>자신이 교환할 제품의 이미지를 넣어 주세요</li>
											<li>3MB 이하의 JPG, JPEG, PNG 파일</li>
											<li>해상도 1200x675 픽셀 이상</li>
											<li>텍스트나 로고는 넣을 수 없어요.</li>
										</ul>
									</div>
									<div class="Section_content">
										<div class="spacing-5">
											<div class="IULField_container">
												첨부 파일을 업로드해 주세요.
												<div class="IULButton_container spacing-2">
													<input id="fileInput" class="is-hidden" type="file"
														accept="image/JPG,image/JPEG,image/PNG" />
													<button
														class="Button_button Button_tertiaryGrey Button_contained Button_sm Button_circular"
														type="button" onclick="handleFileUpload()">
														<input accept="image/JPG,image/JPEG,image/GIF,image/PNG"
																		id="uploadFile" name="uploadFile" placeholder="" type="file" />
														<span class="Button_children">업로드</span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</section>

								<button
									class="Button_button Button_primary Button_contained Button_xl"
									type="submit" onclick="trade()"
									style="width: 420px; max-width: 100%">
									<span><span class="Button_children">저장하기</span></span>
								</button>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
		<input id="id" name="id" hidden>
		<input id="memberid" name="memberid" hidden>
		<input id="fileName" name="fileName" hidden>
	</form>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<!-- 헤더 클릭 이벤트 -->
	<script src="../js/tradeRequest.js"></script>
	<script type="text/javascript">
	
    	function trade() {
    		var id = "${param.id}";
    		var memberid = "2";
    		document.getElementById("id").value = id;
    		document.getElementById("memberid").value = memberid;
    		document.getElementById("form").submit();
		}
    </script>
</body>
</html>