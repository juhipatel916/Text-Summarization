function loadSubCategory() {
		alert("Start!!");
		removeAllSubCategory();
		var http_request = new XMLHttpRequest();
		var categoryId = document.addJobPost.category.value;
		//alert(document.addJobPost.category.value);
		document.getElementById("MockExamSubCategory").innerHTML = "";
		http_request.onreadystatechange = function() {
			if (http_request.readyState == 4) {
				var jsonObj = JSON.parse(http_request.responseText);
				// alert(JSON.stringify(jsonObj));  
				for (i = 0; i < jsonObj.length; i++) {

					var create = document.createElement("input");
					create.setAttribute("type", "checkbox");
					create.setAttribute("name", "subCategoryCheckbox");
					create.setAttribute("id", "subCategoryCheckbox");
					create.value = jsonObj[i].subCategoryId;
					create.text = jsonObj[i].subCategoryName;
					document.getElementById("MockExamSubCategory").appendChild(
							create);

					var create1 = document.createElement("span");
					create.setAttribute("name", "subCategorySpan");
					create1.innerHTML = "&nbsp;" + jsonObj[i].subCategoryName;
					document.getElementById("MockExamSubCategory").appendChild(
							create1);
					var br = document.createElement("br");
					create.setAttribute("name", "subCategoryBr");
					document.getElementById("MockExamSubCategory").appendChild(
							br);
				}
			}
		}
		http_request
				.open(
						"GET",
						"${pageContext.request.contextPath}/MockExamDetailsController?flag=subCategoryIdFK&categoryId="
								+ categoryId, true);
		http_request.send();
	}
	function removeAllSubCategory() {
		/* var remo =document.getElementById("MockExamSubCategory").subCategoryCheckbox;
		for(i=remo ; i>0 ;i--){
		document.getElementById("MockExamSubCategory").subCategoryCheckbox.removeChild(i);	
		}
		 */

		var remo = [];
		remo = document.getElementsByName("subCategoryCheckbox");
		alert(remo.length);
		for (i = 0; i < remo.length; i++) {
			remo[i].parentNode.removeChild(remo[i]);
		}

	}


	
	function loadSubCategoryBlock(c) {
		//alert("Start!!");
		removeAllSubCategoryBlock(c);
		var http_request = new XMLHttpRequest();
		var categoryId=c.value;
		c.parentNode.parentNode.parentNode.childNodes[1].childNodes[1].innerHTML = "";
		
		//alert(document.addJobPost.category.value);
		http_request.onreadystatechange = function()
        {
        	if (http_request.readyState == 4  )	
        		{
           		var jsonObj = JSON.parse(http_request.responseText);             
            		 // alert(JSON.stringify(jsonObj));  
                 		for(i=0 ; i < jsonObj.length ; i++)
         	  			{
               			 	
    				       	  	var create=document.createElement("input");
    				       	 	create.setAttribute("type", "checkbox");
    							create.setAttribute("name", "subCategoryCheckbox");
    							create.setAttribute("id", "subCategoryCheckbox");
			            	  	create.value=jsonObj[i].subCategoryId;
         				  		create.text=jsonObj[i].subCategoryName;
         				  		
         				  		var create1 = document.createElement("span");
         						create.setAttribute("name", "subCategorySpan");
         						create1.innerHTML = "&nbsp;" + jsonObj[i].subCategoryName;
         						document.getElementById("MockExamSubCategory").appendChild(
         								create1);
         						var br = document.createElement("br");
         						create.setAttribute("name", "subCategoryBr");
         						document.getElementById("MockExamSubCategory").appendChild(
         								br);
         				  		c.parentNode.parentNode.parentNode.childNodes[1].childNodes[1].appendChild(create);
         				  		c.parentNode.parentNode.parentNode.childNodes[1].childNodes[1].appendChild(create1);
         				  		c.parentNode.parentNode.parentNode.childNodes[1].childNodes[1].appendChild(br);
		                	  }
				}
 	    }
		http_request.open("GET","${pageContext.request.contextPath}/MockExamDetailsController?flag=subCategoryIdFK&categoryId="+categoryId, true);
    	http_request.send();
	}
	function removeAllSubCategoryBlock(c){
		var remo = [];
		remo = document.getElementsByName("subCategoryCheckbox");
		alert(remo.length);
		for (i = 0; i < remo.length; i++) {
			remo[i].parentNode.removeChild(remo[i]);
		}
 
   	 
    }
	

	function loadBlockCategory(cat)
	{//alert(cat);
		 var http_request = new XMLHttpRequest();
			http_request.onreadystatechange = function()
	        {
	        	if (http_request.readyState == 4  )	
	        		{
	        		//alert(http_request.responseText);
	           		var jsonObj = JSON.parse(http_request.responseText);             
	            		  //alert(JSON.stringify(jsonObj));  
	                 		for(i=0 ; i < jsonObj.length ; i++)
	         	  			{
	               			 	
	    				       	  	var create=document.createElement("option");
				            	  	create.value=jsonObj[i].categoryId;
	         				  		create.text=jsonObj[i].categoryName;
	         				  		document.getElementById(cat).options.add(create);
	         				  		
			                	  }
					}
	        }
			
			
	 	    
			http_request.open("GET","${pageContext.request.contextPath}/JobPostController?flag=loadCategory_addBlock", true);
	    	http_request.send();
	    	
	    	//loadBlockQualification(1);
	}
	
	
	function cancel(c){
		c.parentNode.parentNode.parentNode.remove();	
	}
	var j;
	j=0;
	
	function addBlock(){
		
		j++;
		
		var main_div=document.createElement('div');
		main_div.setAttribute("name","main_div");
		main_div.setAttribute("class","panel panel-default");
		main_div.style.padding="4%";
		main_div.style.border="1px solid silver";
		
		var div1=document.createElement('div');
		div1.setAttribute("name","div1");
		div1.setAttribute("class","form-group");
		
		var label1=document.createElement('label');
		label1.setAttribute("name","label1");
		label1.setAttribute("for", "ccomment");
		label1.setAttribute("class","control-label col-lg-2");
		label1.innerHTML="Category";
		
		
		var div1_in=document.createElement('div');
		div1_in.setAttribute("class","col-lg-10");
		
		select1=document.createElement('select');
		select1.setAttribute("name","category");
		select1.setAttribute("id","category"+j);
		select1.setAttribute("class","form-control");
		
		var option1=document.createElement('option');
		option1.innerHTML="Select Category";
		
    	loadBlockCategory("category"+j);
    	
    	select1.appendChild(option1);
		
		select1.setAttribute("onchange","loadSubCategoryBlock(this)");
		div1_in.appendChild(select1);
		
		div1.appendChild(label1);
		div1.appendChild(div1_in);
		
		main_div.appendChild(div1);
		
		
		//Second Div
		
		
		var div2=document.createElement('div');
		div2.setAttribute("name","div2");
		div2.setAttribute("id","div2");
		div2.setAttribute("class","form-group");
		
		var label2=document.createElement('label');
		label2.setAttribute("name","label2");
		label2.setAttribute("for", "ccomment");
		label2.setAttribute("class","control-label col-lg-2");
		label2.innerHTML="Sub Category";
				
		var div2_in=document.createElement('div');
		div2_in.setAttribute("id","div2_in");
		div2_in.setAttribute("class","col-lg-10");
		
		
		/* var inputCheckbox = document.createElement('input');
		inputCheckbox.setAttribute("id", "checkbox"+j);
		inputCheckbox.setAttribute("name", "checkbox");
		inputCheckbox.setAttribute("type", "checkbox");
		inputCheckbox.setAttribute("class", "form-control");
		
		
		div2_in.appendChild(inputCheckbox);
		 var select2=document.createElement('select');
		select2.setAttribute("name","subCategory");
		select2.setAttribute("id","subCategory"+j);
		select2.setAttribute("class","form-control");
		
		var option2=document.createElement('option');
		option2.innerHTML="Select SubCategory";
		select2.appendChild(option2);
		
		//loadBlockSubCategory("subCategory"+j);
		
		div2_in.appendChild(select2);
		 */ 
		div2.appendChild(label2);
		div2.appendChild(div2_in);
		
		main_div.appendChild(div2);
		
		
		
		//third div No of Questions
		
		
		
		
		var div3=document.createElement('div');
		div3.setAttribute("name","div3");
		div3.setAttribute("class","form-group");
		
		var label3=document.createElement('label');
		label3.setAttribute("name","label3");
		label3.setAttribute("for", "ccomment");
		label3.setAttribute("class","control-label col-lg-2");
		label3.innerHTML="No of Question)";
		
		
		var div3_in=document.createElement('div');
		div3_in.setAttribute("class","col-lg-10");
		
		
		var input3=document.createElement('input');
		input3.setAttribute("name","noOfQuestion");
		input3.setAttribute("type","text");
		input3.setAttribute("id","noOfQuestion");
		input3.setAttribute("class","form-control");
		input3.setAttribute("aria-required","true");
		
		div3_in.appendChild(input3);
		
		div3.appendChild(label3);
		div3.appendChild(div3_in);
		
		main_div.appendChild(div3);
		
		
		
		
		//Fourth Div Mock Exam Details Descrpition

		var div4=document.createElement('div');
		div4.setAttribute("name","div4");
		div4.setAttribute("class","form-group");
		
		var label4=document.createElement('label');
		label4.setAttribute("name","label4");
		label4.setAttribute("for", "ccomment");
		label4.setAttribute("class","control-label col-lg-2");
		label4.innerHTML="Description";
		
		
		var div4_in=document.createElement('div');
		div4_in.setAttribute("class","col-lg-10");
		
		 
		var textarea4=document.createElement('textarea');
		textarea4.setAttribute("name","mockExamDetailsDesc");
		textarea4.setAttribute("id","mockExamDetailsDesc");
		textarea4.setAttribute("class","form-control");
		textarea4.setAttribute("aria-required","true");
		
		div4_in.appendChild(textarea4);
		
		div4.appendChild(label4);
		div4.appendChild(div4_in);
		
		main_div.appendChild(div4);
		
		
		
		
		//Fifth div Button
		
		
		var div5=document.createElement('div');
		div5.setAttribute("name","div5");
		div5.setAttribute("class","form-group");
		
		
		
		var div5_in=document.createElement('div');
		div5_in.setAttribute("class","col-lg-offset-2 col-lg-10");
		
		//<button class="btn btn-default waves-effect" type="button">Cancel</button>
		var button5=document.createElement('button');
		button5.setAttribute("name","button_cancel");
		button5.setAttribute("type","button");
		button5.setAttribute("id","button_cancel");
		button5.setAttribute("onclick","cancel(this)");
		button5.setAttribute("class","btn btn-default waves-effect");
		button5.innerHTML="Cancel";
		
		div5_in.appendChild(button5);
		
		
		div5.appendChild(div5_in);
		
		main_div.appendChild(div5);
		
		document.getElementById("dynamicdata").appendChild(main_div);
		
	}

	
