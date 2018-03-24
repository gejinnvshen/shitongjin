function init()
{
	
	$("#return").click(function(){       
		window.location='../loanapply/list.shtml';
	});
	
	$("#print").click(function(){
        
		var LODOP=getLodop();				
    	LODOP.PRINT_INIT("打印任务名");               //首先一个初始化语句 
    	LODOP.SET_PRINT_PAGESIZE(2,'200mm','200mm');  //控制打印纸张的大小，不是打印区域，第二个参数是高 
    	LODOP.ADD_PRINT_HTM('10mm','10mm','190mm','190mm',$('.contain-table').html());  
    	LODOP.PRINT();                               //最后一个打印(或预览、维护、设计)语句

	});
	
	//总表格
	var url = "/mmcredit-console/applyRest.shtml?id="+$("#projectId").val();
	$.get(url, function(data, status){
		
		if(status == "success")
		{
			
			if(data["code"] == 0)
			{
				var result = data["result"];
				var totalCount = result["totalCount"];
				var i = result["index"];
				var s = result["size"];
				var list = result["data"];
				$.each(list, function(n, obj){					
					
					$("#project_restaurantName").html(obj['restaurantName']);
					$("#project_legal_person").html(obj['corporation']);
					$("#project_controller").html(obj['controller']);
					$("#project_pmA").html(obj['pmA']);
					$("#project_project_manager_b").html(obj['pmB']);
					$("#project_adjust_time").html(obj['investigateDate']);
					$("#project_adjust_place").html(obj['investigatePlace']);
					$("#project_loan_money").html(obj['applyAmount']);
					$("#project_loan_deadline").html(obj['limitation']);
					$("#project_comprehensive_fees").html(obj['chargeAmount']);
					$("#project_charge_method").html(obj['chargeWay']);
					$("#project_repayment_method").html(obj['repayWay']);
					$("#project_use").html(obj['purpose']);
					$("#project_source").html(obj['repaySource']);
					$("#project_guarantee").html(obj['gauranteeWay']);
					$("#project_other").html(obj['other']);
					
				});
			}
		}		
	}); 
	
	//餐厅店主基本信息
	var url = "/mmcredit-console/loanBorrowerRest.shtml?projectId="+$("#projectId").val();
	$.get(url, function(data, status){
		if(status == "success")
		{
			if(data["code"] == 0)
			{
				var result = data["result"];
				var totalCount = result["totalCount"];
				var i = result["index"];
				var s = result["size"];
				var list = result["data"];
				var countBorrower = 0;
				$.each(list, function(n, obj){	
					
					//店主基本信息
					countBorrower++;  
					var borrowerDivId = 'borrowerCarHouse'+countBorrower;
					if(countBorrower == 1){   //注意：不能写成countBorrower = 1 ,否则即使countBorrower=2，countBorrower = 1也成立，为true    						
						$('.borrowerCarHouse').attr('id',borrowerDivId);
						$("#"+borrowerDivId+" #"+"borrower_basic_name").html(obj['name']);
					}else{
						if(countBorrower >= 2){
							$(".restau_info").before($('.borrowerCarHouse').eq(0).clone().attr('id',borrowerDivId));	
							$("#"+borrowerDivId+" #"+"borrower_basic_name").html(obj['name']);
							console.log(countBorrower);	
						}
					}
					
					//车产
					var urlCar = "/mmcredit-console/loanOwnerCarRest.shtml?ownerType=borrower&ownerId="+obj['id'];
					$.get(urlCar, function(data, status){
						if(status == "success")
						{
							if(data["code"] == 0)
							{
								var result = data["result"];
								var totalCount = result["totalCount"];
								var i = result["index"];
								var s = result["size"];
								var list = result["data"];
								var countCar = 0;
								var basicNewDivId = borrowerDivId;
								$.each(list, function(n, obj){	
									countCar++;
									var carNewDivId = 'carInfo'+countCar;
									if(countCar == 1){	
										$("#"+basicNewDivId+' .carInfo').attr('id',carNewDivId);
										$("#"+basicNewDivId+" #"+carNewDivId+" #"+"car_car_price").html(obj['purchasePrice']);  //先给第一份车产填数据再clone()																
									}else{
										if(countCar >= 2){
											var countDecrease = countCar - 1;
											var beforeCarId = 'carInfo' + countDecrease;
											$("#"+basicNewDivId+" #"+beforeCarId).after($("#"+beforeCarId).eq(0).clone().attr('id',carNewDivId));
											$("#"+basicNewDivId+" #"+carNewDivId+" #"+"car_car_price").html(obj['purchasePrice']);	
										}
									}				
									console.log(obj['purchasePrice']);
								});	
							}							
						}		
					}); 
					
					//房产
					var urlHouse = "/mmcredit-console/loanOwnerPropertyRest.shtml?ownerType=borrower&ownerId="+obj['id'];
					$.get(urlHouse, function(data, status){
						if(status == "success")
						{
							if(data["code"] == 0)
							{
								var result = data["result"];
								var totalCount = result["totalCount"];
								var i = result["index"];
								var s = result["size"];
								var list = result["data"];
								/*console.log(result["data"][1]["type"])*/
								var countHouse = 0;
								var houseTotalId = borrowerDivId;
								$.each(list, function(n, obj){
									countHouse++;
									var houseNewDivId = 'houseInfo' + countHouse;
									if(countHouse == 1){	
										$("#"+houseTotalId+' .houseInfo').attr('id',houseNewDivId);
										$("#"+houseTotalId+" #"+houseNewDivId+" #"+"property_house_price").html(obj['purchasePrice']);  //先给第一份车产填数据再clone()																
									}else{
										if(countHouse >= 2){
											var countDecrease = countHouse - 1;
											var beforeHouseId = 'houseInfo' + countDecrease;
											$("#"+houseTotalId+" #"+beforeHouseId).after($("#"+beforeHouseId).eq(0).clone().attr('id',houseNewDivId));
											$("#"+houseTotalId+" #"+houseNewDivId+" #"+"property_house_price").html(obj['purchasePrice']);	
										}
									}				
									console.log(obj['purchasePrice']);
								});
							}
						}		
					}); 
					
					
					/*$("#borrower_basic_phone").html(obj['phone']);
					$("#borrower_share_ratio").html(obj['shares']);
					$("#borrower_id_card").html(obj['identityCard']);
					$("#borrower_account_place").html(obj['residenceAddress']);
					$("#borrower_current_address").html(obj['livingAddress']);
					$("#borrower_social_insurance").html(obj['socialSecurity']);
					$("#borrower_insurance_years").html(obj['socialSecurityYear']);
					$("#borrower_education").html(obj['education']);
					$("#borrower_school").html(obj['school']);
					$("#borrower_profession").html(obj['major']);
					$("#borrower_spouse_contact").html(obj['spouseContact']);
					$("#borrower_spouse_name").html(obj['spouseName']);
					$("#borrower_marry").html(obj['marriage']);
					$("#borrower_spouse_card").html(obj['spouseIDCard']);
					$("#borrower_child_num").html(obj['childrenNum']);
					$("#borrower_fertility").html(obj['giveBirth']);
					$("#borrower_info_inquire").html(obj['executionInfo']);
					$("#borrower_platform_inquire").html(obj['litigationInfo']);*/					

				});
				
			}
		}		
	}); 

	//餐厅信息
	var url = "/mmcredit-console/loanRestaurantinfoRest.shtml?projectId="+$("#projectId").val();
	$.get(url, function(data, status){
		if(status == "success")
		{
			if(data["code"] == 0)
			{
				var result = data["result"];
				var totalCount = result["totalCount"];
				var i = result["index"];
				var s = result["size"];
				var list = result["data"];
				
				$.each(list, function(n, obj){															
					
					$("#restaurantinfo_restaurant_name").html(obj['name']);
					$("#restaurantinfo_license_name").html(obj['businessLicenseName']);
					$("#restaurantinfo_business_address").html(obj['address']);
					$("#restaurantinfo_business_location").html(obj['businessLicenseAddress']);
					$("#restaurantinfo_actual_manager").html(obj['manager']);
					$("#restaurantinfo_license_manager").html(obj['businessLicenseManager']);
					$("#restaurantinfo_actual_time").html(obj['startDate']);
					$("#restaurantinfo_license_date").html(obj['businessLicenseStartDate']);
					$("#restaurantinfo_every_time").html(obj['openingTime']);
					$("#restaurantinfo_license_type").html(obj['businessLicenseBodyType']);
					$("#restaurantinfo_manager_number").html(obj['foodBusinessLicenseNum']);
					$("#restaurantinfo_issued_date").html(obj['fblIssueDate']);
					$("#restaurantinfo_end_date").html(obj['fblEndDate']);
					$("#restaurantinfo_category").html(obj['type']);
					$("#restaurantinfo_business_number").html(obj['sameRestaurantNum']);
					$("#restaurantinfo_indoor_area").html(obj['indoorArea']);
					$("#restaurantinfo_table_number").html(obj['fixedTableNum']);
					$("#restaurantinfo_chair_number").html(obj['fixedChairNum']);
					$("#restaurantinfo_outdoor_area").html(obj['fixedChairNum']);
					$("#restaurantinfo_can_table_num").html(obj['extendTableNum']);
					$("#restaurantinfo_can_chair_num").html(obj['extendChairNum']);
					$("#restaurantinfo_info_inquire").html(obj['executionInfo']);
					$("#restaurantinfo_platform_inquire").html(obj['litigationInfo']);

									
				});
			}
		}		
	}); 
	
	
	
}