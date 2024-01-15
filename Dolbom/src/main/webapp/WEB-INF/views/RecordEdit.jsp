<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="IncludeStyle.jsp" %>

    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>돌봄</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

</head>

<body>

   <!-- Header -->
	<jsp:include page="Header.jsp"></jsp:include>

    <!-- Contact Start -->
    <div class="container-fluid overflow-hidden px-lg-0" style="margin: 3rem 0;">
        <div class="container contact px-lg-0">
          <div class="row g-0 mx-lg-0">
                  <!-- 상세일지 섹션  start-->
                  <section class="col intro">
                    <div class="gradient-custom-1 h-100">
                      <div class="mask d-flex align-items-center h-100">
                        <div class="container">
                          <div class="row justify-content-center">
                            <div class="col-12">
                              <div class="table-responsive bg-white">
                                <table class="table mb-0">
                                  <thead>
                                    <h4 style="text-align: center; padding-right: 38%;">일지 수정</h4>
                                    <div class="col-md-6 offset-md-3">
                                      <hr style="width: 750px;">
                                      
					                  <form action="recordEdit?idx=${record.record_idx}" method="post">
                                      <div class="mb-3 row" style="width: 900px;">
                                          <label for="edu_time2" class="col-sm-2 col-form-label text-center" style="width: 11%;">작성일자</label>
                                          <div class="col-sm-3 col-form-label text-center" style="width: 19%;">
                                              <input value="${record.edu_time.substring(0,10)}" type="date" class="form-control " id="edu_time2" readonly >
                                          </div>
                                          <label for="edu_subject" class="col-sm-2 col-form-label text-center" style="width: 11%;">교육주제</label>
                                          <div class="col-sm-3 col-form-label text-center" style="width: 19%;">
                                              <input value="${record.edu_subject}" type="text" class="form-control" id="edu_subject" name="edu_subject">
                                          </div> 
                                          <label for="edu_time" class="col-sm-2 col-form-label text-center" style="width: 10%;">교육시간</label>
                                          <div class="col-sm-3 col-form-label text-center" style="width: 15%;">
                                              <input value="${record.edu_time.substring(11)}" type="text" class="form-control" id="edu_time" readonly>
                                          </div>
                                          
                                          <div class="mb-3 row">
                                              <label for="user_id" class="col-sm-2 col-form-label text-center" style="width: 11%;">작성자</label>
                                                <div class="col-sm-3 col-form-label text-center" style="width: 19.7%;">
                                                    <input value="${record.user_id}" type="text" class="form-control" id="user_id" name="user_id">
                                                </div>
                                              <label for="edu_name" class="col-sm-2 col-form-label text-center" style="width: 11%;">교육명</label>
                                                <div class="col-sm-3 col-form-label text-center" style="width: 20%;">
                                                    <input value="${record.edu_name}" type="text"  class="form-control" id="edu_name" name="edu_name">
                                                </div>
                                              <label for="edu_headcount" class="col-sm-2 col-form-label text-center" style="width: 10%;">인원 수</label>
                                                <div class="col-sm-3 col-form-label text-center" style="width: 15.7%;">
                                                    <input value="${record.edu_headcount}" type="number" class="form-control" id="record_cnt" value="edu_headcount" name="edu_headcount">
                                                </div>
                                          </div>
                                      </div>
                                    
                                      <div>
                                        <label for="edu_content">내용</label>
                                        <div class="col-sm-3">
                                          <textarea type="text" class="form-control" id="edu_content" style="width:750px; height: 300px;" name="edu_content">${record.edu_content}</textarea>
                                        </div>
                                      </div>

                                      <div style="padding-top: 2%;">
                                        <label for="edu_etc">특이사항</label>
                                        <div class="col-sm-3">
                                          <textarea type="text" class="form-control" id="edu_etc" style="width:750px; height: 300px;" name="edu_etc">${record.edu_etc}</textarea>
                                        </div>
                                      </div>
                                    

                                      <div class="col-auto text-end" style="padding-top: 3%; padding-left: 70%;" >
                                          <button type="reset" class="btn btn-light mb-3">초기화</button></a>
                                          <button type="submit" class="btn btn-warning mb-3">수정완료</button>
                                      </div>
					                  </form>
                                  </div>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                      </div>
                    </div>
                  </section>
                    <!-- 상세일지 섹션  end-->
            </div>
        </div>
    </div>
    <!-- Contact End -->

	<!-- Footer -->
	<jsp:include page="Footer.jsp"></jsp:include>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>

</body>

</html>