<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../css/modal.css" />
<link rel="stylesheet" href="../css/createPage.css" />
<link rel="stylesheet" href="../css/tradeRequest.css" />
</head>
<body>
    <div id="root">
      <div id="ALContainer" class="ALcontainer">
        <div class="ALmain">
          <div id="ALContents" class="ALcontents">
            <section class="Page_container">
              <div class="Page_content">
                <section class="Section_container spacing-6" style="max-width: 630px">
                  <div class="Section_header spacing-4">
                    <h2 class="Section_title Section_isRequired">함께해요 신청</h2>
                  </div>
                  <div class="Section_content">
                    <div class="TextField_textField TextField_md">
                      <label></label>
                      <div class="TextField_field">
                        <section class="Section_container SEWI_container" style="max-width: 720px">
                          <div class="Section_content">
                            <div class="Editor_container SEWI_editor">
                              <div class="wysiwyg-editor">
                                <div class="fr-box fr-basic fr-top" role="application">
                                  <div class="fr-wrapper show-placeholder" dir="auto">
                                    <div
                                      style="min-height: 240px"
                                      class="fr-element fr-view fr-element-scroll-visible"
                                      contenteditable="true"
                                      dir="auto"
                                      aria-disabled="false"
                                      spellcheck="true"
                                    >
                                      <p></p>
                                    </div>
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
                <button
                  class="Button_button Button_primary Button_contained Button_xl"
                  type="button"
                  style="width: 420px; max-width: 100%"
                >
                  <span><span class="Button_children">신청하기</span></span>
                </button>
              </div>
            </section>
          </div>
        </div>
      </div>
    </div>
    
    
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <!-- 헤더 클릭 이벤트 -->
    <script src="../js/tradeRequest.js"></script>
  </body>
</html>