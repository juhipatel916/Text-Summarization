<div class="left side-menu">
	<div class="sidebar-inner slimscrollleft">
		<div class="user-details">
			<div class="pull-left">
				<img src="images/avatar-1.jpg" alt="" class="thumb-md img-circle">
			</div>
			<div class="user-info">
				<div class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"
						aria-expanded="false">John Doe <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<!-- <li><a href="javascript:void(0)"><i
								class="md md-face-unlock"></i> Profile
								<div class="ripple-wrapper"></div></a></li>
						<li><a href="javascript:void(0)"><i
								class="md md-settings"></i> Settings</a></li>
						<li><a href="javascript:void(0)"><i class="md md-lock"></i>
								Lock screen</a></li> -->
						<li><a href="javascript:void(0)"><i
								class="md md-settings-power"></i> Logout</a></li>
					</ul>
				</div>
				<p class="text-muted m-0">Administrator</p>
			</div>
		</div>
		<!--- Divider -->
		<div id="sidebar-menu">
			<ul>
				<li><a href="index.jsp" class="waves-effect waves-light active"><i
						class="md md-home"></i><span>Dashboard</span></a></li>
				<%-- <li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-input"></i><span>Manage
							Category</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addCategory.jsp">Add Category</a></li>
						<li><a href="${pageContext.request.contextPath}/CategoryController?flag=loadCategorySearchData">Search Category</a></li>
					</ul></li>
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-input"></i><span>Manage
							SubCategory</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/SubCategoryController?flag=loadCategory">Add SubCategory</a></li>
						<li><a href="${pageContext.request.contextPath}/SubCategoryController?flag=loadSubCategorySearchData">Search SubCategory</a></li>
					</ul></li>
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="ion ion-trophy"></i><span>Manage
							Qualification</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addQualification.jsp">Add Qualification</a></li>
						<li><a href="${pageContext.request.contextPath}/QualificationController?flag=loadQualificationSearchData">Search Qualification</a></li>
					</ul></li>
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-location-on"></i><span>Manage
							Country</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addCountry.jsp">Add Country</a></li>
						<li><a href="${pageContext.request.contextPath}/CountryController?flag=loadCountrySearchData">Search Country</a></li>
					</ul></li>
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-location-on"></i><span>Manage
							State</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/StateController?flag=loadCountry">Add State</a></li>
						<li><a href="${pageContext.request.contextPath}/StateController?flag=loadStateSearchData">Search State</a></li>
					</ul></li>
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-location-on"></i><span>Manage
							City</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/CityController?flag=loadState">Add City</a></li>
						<li><a href="${pageContext.request.contextPath}/CityController?flag=loadCitySearchData">Search City</a></li>
					</ul></li>
				 --%>	
					<%-- <li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-desktop-mac"></i><span>Manage
							Department</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addDepartment.jsp">Add Department</a></li>
						<li><a href="${pageContext.request.contextPath}/DepartmentController?flag=loadDepartmentSearchData">Search Department</a></li>
					</ul></li>
				 --%>
				
				<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-desktop-mac"></i><span>Manage
							Sub Department</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/SubDepartmentController?flag=loadDepartment">Add Sub Department</a></li>
						<li><a href="${pageContext.request.contextPath}/SubDepartmentController?flag=loadSubDepartmentSearchData">Search Sub Department</a></li>
					</ul></li>
					<%-- <li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-assignment"></i><span>Manage
							Exam Type</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="addExamType.jsp">Add Exam Type</a></li>
						<li><a href="${pageContext.request.contextPath}/ExamTypeController?flag=loadExamTypeSearchData">Search Exam Type</a></li>
					</ul></li>
					 --%>
					<%-- <li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-mail"></i><span>Manage
							Quality Checking Test</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/QualityCheckingTestController?flag=loadCategory">Add Test</a></li>
						<li><a href="${pageContext.request.contextPath}/QualityCheckingTestController?flag=loadQualityCheckingTestSearchData">Search Test</a></li>
					</ul></li>
					 --%>
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-assignment"></i><span>Manage
							Mock Exam</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/MockExamController?flag=loadCategory">Add Mock Exam</a></li>
						<li><a href="${pageContext.request.contextPath}/MockExamController?flag=loadMockExamSearchData">Search Mock Exam</a></li>
					</ul></li>
					
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-assignment"></i><span>Manage
							Mock Exam Details</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/MockExamDetailsController?flag=loadMockExamDetailsData">Add Mock Exam Details</a></li>
						<li><a href="${pageContext.request.contextPath}/MockExamDetailsController?flag=loadMockExamSearchData">Search Mock Exam Details</a></li>
					</ul></li>
					
					
					<!-- <li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-mail"></i><span>Manage
							Final Exam</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="">Add Final Exam</a></li>
						<li><a href="">Search Final Exam</a></li>
					</ul></li>
					 -->
					<!-- <li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-pencile"></i><span>Manage
							Exam Criteria</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="">Add Exam Criteria</a></li>
						<li><a href="">Search Exam Criteria</a></li>
					</ul></li>
					 -->
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="fa fa-question"></i><span>Manage
							Question</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/QuestionController?flag=loadQuestionData">Add Question</a></li>
						<li><a href="${pageContext.request.contextPath}/QuestionController?flag=loadQuestionSearchData">Search Question</a></li>
					</ul></li>
					
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="md md-location-city"></i><span>Manage
							Exam Center</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/CenterController?flag=loadCenterData">Add Exam Center</a></li>
						<li><a href="${pageContext.request.contextPath}/CenterController?flag=loadCenterSearchData">Search Exam Center</a></li>
					</ul></li>
				
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="ion ion-briefcase"></i><span>Manage
							JobPost</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/JobPostController?flag=loadJobPostData">Add Job Post</a></li>
						<li><a href="${pageContext.request.contextPath}/JobPostController?flag=loadJobPostSearchData">Search Job Post</a></li>
					</ul></li>
					
					<li class="has_sub"><a href="#"
					class="waves-effect waves-light"><i class="fa fa-paperclip"></i><span>Manage
							Tutorial</span><span class="pull-right"><i class="md md-add"></i></span></a>
					<ul class="list-unstyled">
						<li><a href="${pageContext.request.contextPath}/TutorialController?flag=loadTutorialData">Add Tutorial</a></li>
						<li><a href="${pageContext.request.contextPath}/TutorialController?flag=loadTutorialSearchData">Search Tutorial</a></li>
					</ul></li>
					
					<%-- <li><a href="${pageContext.request.contextPath}/ResultController?flag=loadResultSearchData" class="waves-effect"><i
						class="md md-event"></i><span>View Result</span></a></li>
					
					<li><a href="${pageContext.request.contextPath}/ComplainController?flag=loadComplainSearchData" class="waves-effect"><i
						class="md md-event"></i><span>Manage Complain</span></a></li>
				 --%>
				
					
					
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>