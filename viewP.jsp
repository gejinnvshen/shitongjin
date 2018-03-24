<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<%@include file="/page/common/base.jsp" %>
		<title>尽调报告</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="format-detection" content="telephone=no" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/viewP.css" />
	</head>
	<body>
	<input type="hidden" id="projectId" value="${projectId}"></input>
		<div id="wrapper">
			<!-- Navigation -->
			<jsp:include page="/page/common/menu.jsp" >
				<jsp:param value="2" name="menu"/>
				<jsp:param value="1" name="index"/>
			</jsp:include>
			<div id="page-wrapper" >
				<div class="container-fluid" style="position:relative;top:0px;">

					<!-- Page Heading -->
					<div class="row">
						<div class="col-lg-12">
							<h1 class="page-header">
                            		
                       		 </h1>
						</div>
					</div>
					<!-- /.row -->
					
					<!--  注释 -->
					<div class="row">
		<div class="container-fluid">
						
			<div class="contain-table">	
				<div class="info-title" style="text-align:center;">
		        	食桶金项目方案
		        </div>
		        <div class="complete-info" style="width:100%"> 
					<div>
				        <table border="1" class="basic-info" >
				        	<tr>
				        		<td class="td-width-2">
				        			<span>借款餐厅名称</span>
				        		</td>
				        		<td  colspan="3"><em id="project_restaurantName"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			<span>店铺法人</span>
				        		</td>
				        		<td class="td-width-3 "><em id="project_legal_person"></em></td>
				        		<td class="td-width">
				        			<span >店铺实际控制人</span>
				        		</td>
				        		<td ><em id="project_controller"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			项目经理A
				        		</td>
				        		<td class="td-width-3"><em id="project_pmA"></em></td>
				        		<td class="td-width">
				        			项目经理B
				        		</td>
				        		<td ><em id="project_project_manager_b"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			尽调时间
				        		</td>
				        		<td class="td-width-3"><em id="project_adjust_time"></em></td>
				        		<td class="td-width">
				        			尽调地点
				        		</td>
				        		<td ><em id="project_adjust_place"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			贷款金额
				        		</td>
				        		<td class="td-width-3"><em id="project_loan_money"></em></td>
				        		<td class="td-width">
				        			贷款期限
				        		</td>
				        		<td ><em id="project_loan_deadline"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			综合收费
				        		</td>
				        		<td  colspan="3"><em id="project_comprehensive_fees"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			收费方式
				        		</td>
				        		<td  colspan="3"><em id="project_charge_method"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			还款方式
				        		</td>
				        		<td  colspan="3"><em id="project_repayment_method"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			用途
				        		</td>
				        		<td colspan="3"><em id="project_use"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			还款来源
				        		</td>
				        		<td  colspan="3"><em id="project_source"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			担保方式
				        		</td>
				        		<td  colspan="3"><em id="project_guarantee"></em></td>
				        	</tr>
				        	<tr>
				        		<td class="td-width-2">
				        			其他
				        		</td>
				        		<td  colspan="3"><em id="project_other"></em></td>
				        	</tr>
				        	
				        </table>		           	        		     		        		       
					</div>
			       
		        </div> 
		        
		        
		        <div class="info-title">
		        	项目编号：<em id="item_number"></em>
		        	<span style="position: absolute;right: 1.5rem;">
		        	经办人:A <em id="manager_a"></em>
		        	B <em id="manager_b"></em>
		        	</span>
		        </div>
				<div class="complete-info"> 
					<div class="table-basic">
					<div class="borrowerCarHouse" >
						<div class="borrower" id="borrower">
							<p>一、餐厅店主基本信息</p>
					        <table border="1" class="basic-info">				        	
					        	<tr>
					        		<td style="width:130px;">
					        			<span>姓名：</span><em id="borrower_basic_name"></em>
					        		</td>
					        		<td>
					        			<span>电话：</span><em id="borrower_basic_phone"></em>
					        		</td>
					        		<td style="width:110px;">
					        			<span>股份占比：</span><em id="borrower_share_ratio"></em>
					        		</td>				        		
					        	</tr>
					        	<tr>
					        		<td>
					        			<span>身份证号：</span><em id="borrower_id_card"></em>
					        		</td>
					        		<td colspan="2">
					        			<span>户口所在地：</span><em id="borrower_account_place"></em>
					        		</td>				        					        		
					        	</tr>
					        	<tr>
					        		<td>
					        			<span>现在住址：</span><em id="borrower_current_address"></em>
					        		</td>
					        		<td>
					        			<span>是否缴纳社保：</span><em id="borrower_social_insurance"></em>
					        		</td>
					        		<td style="width:100px;">
					        			<span>缴纳社保年限：</span><em id="borrower_insurance_years"></em>
					        		</td>				        					        		
					        	</tr>
					        	<tr>
					        		<td style="width:130px;">
					        			<span>学历：</span><em id="borrower_education"></em>
					        		</td>
					        		<td>
					        			<span>毕业院校：</span><em id="borrower_school"></em>
					        		</td>
					        		<td style="width:110px;">
					        			<span>专业：</span><em id="borrower_profession"></em>
					        		</td>				        		
					        	</tr>
					        	<tr>
					        		<td style="width:130px;">
					        			<span>配偶联系方式：</span><em id="borrower_spouse_contact"></em>
					        		</td>
					        		<td>
					        			<span>配偶姓名：</span><em id="borrower_spouse_name"></em>
					        		</td>
					        		<td style="width:110px;">
					        			<span>婚否：</span><em id="borrower_marry"></em>
					        		</td>				        		
					        	</tr>
					        	<tr>
					        		<td style="width:130px;">
					        			<span>配偶身份证号：</span><em id="borrower_spouse_card"></em>
					        		</td>
					        		<td>
					        			<span>子女数量：</span><em id="borrower_child_num"></em>
					        		</td>
					        		<td style="width:110px;">
					        			<span>生育否：</span><em id="borrower_fertility"></em>
					        		</td>				        		
					        	</tr>
					        	<tr>
					        		<td colspan="3">
					        			<span>全国法院被执行人信息查询：</span><em id="borrower_info_inquire"></em>
					        		</td>				        						        		
					        	</tr>
					        	<tr>
					        		<td colspan="3">
					        			<span>深圳法院网上诉讼平台查询：</span><em id="borrower_platform_inquire"></em>
					        		</td>				        						        		
					        	</tr>
					        	<tr>
					        		<td><span>身份证正面图片</span><em>是</em></td>
					        		<td><span>身份证背面图片</span><em>是</em></td>
					        		<td><span>毕业证图片</span><em>是</em></td>
					        	</tr>
					        	<tr>
					        		<td><span>学位证图片</span><em>是</em></td>
					        		<td><span>结婚证图片</span><em>是</em></td>
					        		<td><span>配偶身份证正面图片</span><em>是</em></td>
					        	</tr>
					        	<tr>
					        		<td><span>配偶身份证背面图片</span><em>是</em></td>
					        		<td><span>子女户口页资料图片</span><em>是</em></td>
					        		<td><span>被执行人信息查询图片</span><em>是</em></td>
					        	</tr>
					        	<tr>
					        		<td><span>诉讼信息查询图片</span><em>是</em></td>	
					        		<td colspan="2">
					        			<span>从业经历</span><em id="borrower_family_assets"></em>
					        		</td>				        						        		
					        	</tr>
					        </table>
					    </div>    
				        <div class="houseInfo">
				        	<table border="1" class="basic-info house-car-assets">
				        		<tr><td>权利人名称</td><td>资产类型</td><td colspan="2">物业名称及位置</td></tr>
					        	<tr>
					        		<td>房产</td>
					        		<td><em id="property_house_assets"></em></td>
					        		<td colspan="2"><em id="house_place"></em></td>
					        	</tr>
					        	<tr><td >权利人名称</td><td>评估值</td><td colspan="2">抵质押、借款情况</td></tr>
					        	<tr>
					        		<td>房产</td>
					        		<td><em id="house_evaluation"></em></td>
					        		<td colspan="2"><em id="house_loan"></em></td>
					        	</tr>
					        	<tr><td >权利人名称</td><td>面积/数量</td><td>购入日期</td><td>购买价</td></tr>
					        	<tr>
					        		<td>房产</td>
					        		<td><em id="house_num"></em></td>
					        		<td><em id="house_date"></em></td>
					        		<td><em id="property_house_price"></em></td>
					        	</tr>
					        </table>
				        </div>
				        <div class="carInfo" >
				        	<table border="1" class="basic-info house-car-assets">	
					        	<tr><td>权利人名称</td><td>品牌</td><td>型号</td><td>车牌号</td></tr>					        	
					        	<tr>
					        		<td>车产</td>
					        		<td><em id="car_assets"></em></td>
					        		<td><em id="car_assets"></em></td>
					        		<td><em id="car_assets"></em></td>
					        	</tr>
					        	<tr><td >权利人名称</td><td>发动机号</td><td>车架号</td><td>购入日期</td></tr>
					        	<tr>
					        		<td>车产</td>
					        		<td><em id="car_assets"></em></td>
					        		<td><em id="car_assets"></em></td>
					        		<td><em id="car_date"></em></td>
					        		
					        	</tr>
					        	<tr><td >权利人名称</td><td>购买价</td><td>评估价</td><td>图片</td></tr>
					        	<tr>
					        		<td>车产</td>
					        		<td><em id="car_car_price"></em></td>
					        		<td><em id="car_evaluation"></em></td>
					        		<td><em id="car_yesNo"></em></td>
					        	</tr>
					        	<tr><td >权利人名称</td><td colspan="3">抵质押、借款情况</td></tr>
					        	<tr>
					        		<td>车产</td>
					        		<td colspan="3"><em id="loan">efeg</em></td>
					        	</tr>
				       		</table>
				        </div>
				        <!-- <div>
				        	<table border="1" class="basic-info house-car-assets">
					        	<tr>
					        		<td>其他资产</td>
					        		<td><em id="other_assets"></em></td>
					        		<td colspan="2"><em id="other_place"></em></td>
					        	</tr>
					        	<tr>
					        		<td>其他资产</td>
					        		<td><em id="other_evaluation"></em></td>
					        		<td colspan="2"><em id="other_loan"></em></td>
					        	</tr>
					        	<tr>
					        		<td>其他资产</td>
					        		<td><em id="other_num"></em></td>
					        		<td><em id="other_date"></em></td>
					        		<td><em id="other_price"></em></td>
					        	</tr>
					        	<tr>
					        		<td colspan="4"><span>餐饮店主从业经历描述：</span><em id="owner_experience"></em></td>
					        	</tr>
				        	</table>
				        </div> -->
				        	
				    </div>   
					</div>
			        <div class="restau_info">
			       		<p>二、餐厅信息</p>  
			       		<table border="1" class="basic-info res-basic-info">
			       			<tr>
			       				<td><span>餐厅名称: </span><em id="restaurantinfo_restaurant_name"></em></td>
			       				<td><span>营业执照名称：</span><em id="restaurantinfo_license_name"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>现场调查经营地址: </span><em id="restaurantinfo_business_address"></em></td>
			       				<td><span>营业执照经营场所:</span><em id="restaurantinfo_business_location"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>餐厅实际经营者：</span><em id="restaurantinfo_actual_manager"></em></td>
			       				<td><span>营业执照经营者：</span><em id="restaurantinfo_license_manager"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>餐厅实际开业时间：</span><em id="restaurantinfo_actual_time"></em></td>
			       				<td><span>营业执照成立日期：</span><em id="restaurantinfo_license_date"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>餐厅每日营业时间：</span><em id="restaurantinfo_every_time"></em></td>
			       				<td><span>营业执照主体类型：</span><em id="restaurantinfo_license_type"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>食品经营许可证编号：</span><em id="restaurantinfo_manager_number"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>食品经营许可证签发日期：</span><em id="restaurantinfo_issued_date"></em></td>
			       				<td><span>食品经营许可证结束日期：</span><em id="restaurantinfo_end_date"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>品类：</span><em id="restaurantinfo_category"></em></td>
			       				<td><span>三公里范围内商家数量：</span><em id="restaurantinfo_business_number"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2">
			       					<table border="1" class="area-number">
			       						<tr>
			       							<td><span>餐厅室内面积:</span><em id="restaurantinfo_indoor_area"></em></td>
			       							<td><span>固定桌子数量:</span><em id="restaurantinfo_table_number"></em></td>
			       							<td><span>固定椅子数量:</span><em id="restaurantinfo_chair_number"></em></td>
			       						</tr>
			       						<tr>
			       							<td><span>可拓展室外面积:</span><em id="restaurantinfo_outdoor_area"></em></td>
			       							<td><span>可扩展桌子数量： </span><em id="restaurantinfo_can_table_num"></em></td>
			       							<td><span>可扩展椅子数量:</span><em id="restaurantinfo_can_chair_num"></em></td>
			       						</tr>
			       					</table>
			       				</td>			       				
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>全国法院被执行人信息查询：</span><em id="restaurantinfo_info_inquire"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>深圳法院网上诉讼平台查询：</span><em id="restaurantinfo_platform_inquire"></em></td>
			       			</tr>
							
			       		</table>
			       		<table border="1" class="basic-info">
			       			<tr>
			       				<td><span>门头照</span><em>是</em></td>
			       				<td><span>店内照</span><em>是</em></td>
			       				<td><span>被执行人信息查询图片</span><em>是</em></td>
			       				<td><span>诉讼信息查询图片</span><em>是</em></td>
			       			</tr>
			       			<tr>
			       				<td><span>厨房照</span><em>是</em></td>
			       				<td><span>菜单照</span><em>是</em></td>
			       				<td><span>营业执照图片</span><em>是</em></td>
			       				<td><span>食品经营许可证图片</span><em>是</em></td>
			       			</tr>
			       		</table>
			       		<p>餐厅初始投资</p>
			       		<table  border="1" class="basic-info">
			       			<tr>
			       				<td><span>1、转让费金额：</span><em id="transer_money"></em></td>
			       				<td><span>支付时间：</span><em id="pay_time_1"></em></td>
			       				<td><span>是否有单据:</span><em id="documents_1"></em></td>
			       				<td><span>是否流水可查:</span><em id="flow_checked"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>同地段转让费现价：</span></td>
			       				<td colspan="3"><em id="flow_price"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>2、喝茶费/进场费:</span><em id="entry_fee"></em></td>
			       				<td><span>支付时间：</span><em id="pay_time_2"></em></td>
			       				<td><span>是否有单据:</span><em id="documents_2"></em></td>
			       				<td><span>是否流水可查:</span><em id="flow_checked_2"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>3、装修费：</span><em id="professional_fee"></em></td>
			       				<td><span>是否有合同：</span><em id="is_contract"></em></td>
			       				<td><span>是否有单据:</span><em id="documents_3"></em></td>
			       				<td><span>是否流水可查:</span><em id="flow_checked_3"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>4、设备费：</span><em id="equipment_cost"></em></td>
			       				<td><span>是否有合同：</span><em id="is_contract_4"></em></td>
			       				<td><span>是否有单据:</span><em id="documents_4"></em></td>
			       				<td><span>是否流水可查:</span><em id="flow_checked_4"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>5、租金押金：</span><em id="rent"></em></td>
			       				<td colspan="2"><span>租赁期限：</span><em id="lease_deadline"></em></td>			       				
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>月租金涨幅：</span><em id="rent_increase"></em></td>
			       				<td colspan="2"><span>租赁期限：</span><em id="lease_deadline_2"></em></td>			       				
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>租赁合同是否取得：</span><em id="lease_is_get"></em></td>
			       				<td colspan="2"><span>租金押金收据是否取得：</span><em id="rent_is_get"></em></td>			       				
			       			</tr>
			       		</table>
			       		<p>餐厅日常经营</p>
			       		<table  border="1" class="basic-info">
			       			<tr>
			       				<td><span>月收入：</span><em id="month_income"></em></td>
			       				<td><span>月毛利率：</span><em id="gross_margin"></em></td>
			       				<td><span>月毛利：</span><em id="gross_profit"></em></td>
			       				<td><span>月净利率：</span><em id="net_rate"></em></td>
			       				<td><span>月净利：</span><em id="net_income"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="5"><span>1、营业收入</span><em id="operation_income"></em></td>
			       			</tr>
			       		</table>
			       		<table  border="1" class="basic-info">
			       			<tr>
			       				<td><span>月总营业收入：</span><em id="total_income"></em></td>
			       				<td><span>早餐收入：</span><em id="breakfast_income"></em></td>
			       				<td><span>中餐收入：</span><em id="lunch_income"></em></td>
			       				<td><span>晚餐收入：</span><em id="dinner_income"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>客单价：</span><em id="unit_price"></em></td>
			       				<td><span>日流量人次：</span><em id="traffic_times"></em></td>
			       				<td colspan="2"><span>翻台率：</span><em id="turn_rate"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>月营收绑定卡信息：</span></td>
			       				<td><em id="tie_card"></em></td>
			       				<td><span>是否已获取流水：</span></td>
			       				<td><em id="is_get_flow"></em></td>
			       			</tr>
			       		</table>
			       		<table  border="1" class="basic-info">
			       			<tr>
			       				<td colspan="8"><span>①点餐机数据验证：</span><em id="order_verification"></em></td>
			       				
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="order-7"></em></td>
			       				<td><em id="order-8"></em></td>
			       				<td><em id="order-9"></em></td>
			       				<td><em id="order-10"></em></td>
			       				<td><em id="order-11"></em></td>
			       				<td><em id="order-12"></em></td>
			       				<td><em id="order-total"></em></td>
			       				<td><em id="order-average"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>②外卖数据验证：请说明点餐机数据是否包含外卖数据</span><em id="takeaway_meituan_verification"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>美团</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="takeaway_meituan_7"></em></td>
			       				<td><em id="takeaway_meituan_8"></em></td>
			       				<td><em id="takeaway_meituan_9"></em></td>
			       				<td><em id="takeaway_meituan_10"></em></td>
			       				<td><em id="takeaway_meituan_11"></em></td>
			       				<td><em id="takeaway_meituan_12"></em></td>
			       				<td><em id="takeaway_meituan_total"></em></td>
			       				<td><em id="takeaway_meituan_average"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>饿了么</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="takeaway_emo_7"></em></td>
			       				<td><em id="takeaway_emo_8"></em></td>
			       				<td><em id="takeaway_emo_9"></em></td>
			       				<td><em id="takeaway_emo_10"></em></td>
			       				<td><em id="takeaway_emo_11"></em></td>
			       				<td><em id="takeaway_emo_12"></em></td>
			       				<td><em id="takeaway_emo_total"></em></td>
			       				<td><em id="takeaway_emo_average"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>百度</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="takeaway_baidu_7"></em></td>
			       				<td><em id="takeaway_baidu_8"></em></td>
			       				<td><em id="takeaway_baidu_9"></em></td>
			       				<td><em id="takeaway_baidu_10"></em></td>
			       				<td><em id="takeaway_baidu_11"></em></td>
			       				<td><em id="takeaway_baidu_12"></em></td>
			       				<td><em id="takeaway_baidu_total"></em></td>
			       				<td><em id="takeaway_baidu_average"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>③收款方式验证</span><em id="receipt_verification"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>月均现金收款：</span><em id="month_cash_receipt"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="month_cash_7"></em></td>
			       				<td><em id="month_cash_8"></em></td>
			       				<td><em id="month_cash_9"></em></td>
			       				<td><em id="month_cash_10"></em></td>
			       				<td><em id="month_cash_11"></em></td>
			       				<td><em id="month_cash_12"></em></td>
			       				<td><em id="month_cash_total"></em></td>
			       				<td><em id="month_cash_average"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>月均微信收款：</span><em id="month_weixin"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="month_weixin_7"></em></td>
			       				<td><em id="month_weixin_8"></em></td>
			       				<td><em id="month_weixin_9"></em></td>
			       				<td><em id="month_weixin_10"></em></td>
			       				<td><em id="month_weixin_11"></em></td>
			       				<td><em id="month_weixin_12"></em></td>
			       				<td><em id="month_weixin_total"></em></td>
			       				<td><em id="month_weixin_average"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>月均支付宝收款：</span><em id="month_zhifubao"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="month_zhifubao_7"></em></td>
			       				<td><em id="month_zhifubao_8"></em></td>
			       				<td><em id="month_zhifubao_9"></em></td>
			       				<td><em id="month_zhifubao_10"></em></td>
			       				<td><em id="month_zhifubao_11"></em></td>
			       				<td><em id="month_zhifubao_12"></em></td>
			       				<td><em id="month_zhifubao_total"></em></td>
			       				<td><em id="month_zhifubao_average"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>月均外卖收款：</span><em id="month_takeaway_receipt"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="month_takeaway_receipt_7"></em></td>
			       				<td><em id="month_takeaway_receipt_8"></em></td>
			       				<td><em id="month_takeaway_receipt_9"></em></td>
			       				<td><em id="month_takeaway_receipt_10"></em></td>
			       				<td><em id="month_takeaway_receipt_11"></em></td>
			       				<td><em id="month_takeaway_receipt_12"></em></td>
			       				<td><em id="month_takeaway_receipt_total"></em></td>
			       				<td><em id="month_takeaway_receipt_average"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="8"><span>月均其他方式收款：</span><em id="month_other"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>2017.7</span></td>
			       				<td><span>2017.8</span></td>
			       				<td><span>2017.9</span></td>
			       				<td><span>2017.10</span></td>
			       				<td><span>2017.11</span></td>
			       				<td><span>2017.12</span></td>
			       				<td><span>合计</span></td>
			       				<td><span>月均</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="month_other_7"></em></td>
			       				<td><em id="month_other_8"></em></td>
			       				<td><em id="month_other_9"></em></td>
			       				<td><em id="month_other_10"></em></td>
			       				<td><em id="month_other_11"></em></td>
			       				<td><em id="month_other_12"></em></td>
			       				<td><em id="month_other_total"></em></td>
			       				<td><em id="month_other_average"></em></td>
			       			</tr>
			       		</table>
			       		<p>2、原材料采购</p>
			       		<table border="1" class="basic-info">
			       			<tr>
			       				<td><span>月采购金额：</span><em id="purchase_money"></em></td>
			       				<td><span>采购品类：</span><em id="purchase_type"></em></td>
			       				<td><span>采购频次：</span><em id="purchase_frequency"></em></td>
			       				<td><span>采购方:</span><em id="purchase_people"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span> 采购合同是否取得：</span><em id="purchase_contract"></em></td>
			       				<td><span>采购支付方式：</span><em id="purchase_pay"></em></td>
			       				<td colspan="2"><span>采购收据是否获得:</span><em id="purchase_receipt"></em></td>
			       			</tr>
			       		</table>
			       		<table  border="1" class="basic-info">
			       			<tr>
			       				<td colspan="3"><span>3、租金</span></td>
			       			</tr>
			       			<tr>
			       				<td><span> 月租金：</span><em id="month_rent"></em></td>
			       				<td><span>支付时间：</span><em id="rent_pay_time"></em></td>
			       				<td><span>支付方式：</span><em id="rent_pay_type"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="3"><span>近3个月租金支付收据是否取得：</span><em id="three_month_rent"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="3"><span>4、水电费</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>月水电费：</span><em id="month_water"></em></td>
			       				<td><span>支付时间：</span><em id="water_pay_time"></em></td>
			       				<td><span>支付方式：</span><em id="water_pay_type"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="3"><span>近3个月水电费支付收据是否取得：</span><em id="three_month_water"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="3"><span>5、物业费</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>月物业费：</span><em id="month_property"></em></td>
			       				<td><span>支付时间：</span><em id="property_time"></em></td>
			       				<td><span>支付方式：</span><em id="property_type"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="3"><span>近3个月物业费支付收据是否取得：</span><em id="three_month_property"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="3"><span>6、人工费</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>人工数量：</span><em id="artifical_num"></em></td>
			       				<td><span>月人工工资：</span><em id="artifical_wage"></em></td>
			       				<td><span>支付方式：</span><em id="artifical_pay"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="3"><span>近3个月人工费支付收据是否取得：</span><em id="three_month_artifical"></em></td>
			       			</tr>
			       		</table>
			        </div>
			        <div>
			       	 	<p>三、还款意愿</p>
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td><span>征信报告查询者姓名：</span><em id="credit_report_name"></em></td>
			       				<td><span>征信报告时间：</span><em id="credit_report_time"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>征信报告查询人：本人/代查</span><em id="credit_report_man"></em></td>
			       				<td><span>征信报告数据是否</span><em id="credit_report_man"></em></td>
			       			</tr>
			        	</table>
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td colspan="10"><span>1、信用提示</span></td>
			       			</tr>
			        		<tr>
			       				<td ><span>个人住房贷款笔数</span></td>
			       				<td><span>个人商用房贷款笔数</span></td>
			       				<td><span>其他贷款笔数</span></td>
			       				<td><span>首笔贷款发放月份</span></td>
			       				<td><span>贷记卡账户数</span></td>
			       				<td><span>首张贷记卡发卡月份</span></td>
			       				<td><span>准贷记卡账户数</span></td>
			       				<td><span>首张准贷记卡发卡月份</span></td>
			       				<td><span>本人声明数目</span></td>
			       				<td><span>异议标注数目</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="personal_house_num">20</em></td>
			       				<td><em id="personal_business_num">20</em></td>
			       				<td><em id="other_loan_num">20</em></td>
			       				<td><em id="first_loan_month">20</em></td>
			       				<td><em id="loan_card_num">20</em></td>
			       				<td><em id="first_card_month">20</em></td>
			       				<td><em id="permit_card_num">20</em></td>
			       				<td><em id="first_permit_card">20</em></td>
			       				<td><em id="I_declare_num">20</em></td>
			       				<td><em id="objection_num">20</em></td>
			       			</tr>
			        	</table>
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td colspan="12"><span>2、逾期及违约信息披露</span></td>
			       			</tr>
			        		<tr>
			       				<td colspan="4"><span>贷款逾期</span></td>
			       				<td colspan="4"><span>贷记卡逾期</span></td>
			       				<td colspan="4"><span>准贷记卡60天以上透支</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>笔数</span></td>
			       				<td><span>月份数</span></td>
			       				<td><span>逾期总额</span></td>
			       				<td><span>月数</span></td>
			       				<td><span>账户数</span></td>
			       				<td><span>月份数</span></td>
			       				<td><span>逾期总额</span></td>
			       				<td><span>月数</span></td>
			       				<td><span>账户数</span></td>
			       				<td><span>月份数</span></td>
			       				<td><span>透支余额</span></td>
			       				<td><span>月数</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="loan_overdue_num"></em></td>
			       				<td><em id="loan_overdue_monthNum"></em></td>
			       				<td><em id="loan_overdue_money"></em></td>
			       				<td><em id="loan_overdue_month"></em></td>
			       				<td><em id="loan_card_account"></em></td>
			       				<td><em id="loan_card_monthNum"></em></td>
			       				<td><em id="loan_card_money"></em></td>
			       				<td><em id="loan_card_month"></em></td>
			       				<td><em id="permit_overdraft_account"></em></td>
			       				<td><em id="permit_overdraft_month"></em></td>
			       				<td><em id="permit_overdraft_money"></em></td>
			       				<td><em id="permit_overdraft_monthNum"></em></td>
			       			</tr>
			        	</table>
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td colspan="6"><span>3、授信及负债信息摘要</span></td>
			       			</tr>
			       			<tr>
			       				<td colspan="6"><span>未结清贷款信息汇总</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>贷款法人机构数</span></td>
			       				<td><span>贷款机构数</span></td>
			       				<td><span>笔数</span></td>
			       				<td><span>合同金额</span></td>
			       				<td><span>余额</span></td>
			       				<td><span>最近6个月平均应还款</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="credit_loan_man">20</em></td>
			       				<td><em id="credit_loan_mechanism">20</em></td>
			       				<td><em id="credit_number">20</em></td>
			       				<td><em id="credit_contract_money">20</em></td>
			       				<td><em id="credit_balance">20</em></td>
			       				<td><em id="credit_recent_month">20</em></td>
			       			</tr>
			        	</table>
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td colspan="7"><span>未销户贷记卡信息汇总</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>发卡法人机构数</span></td>
			       				<td><span>发卡机构数</span></td>
			       				<td><span>授信总额</span></td>
			       				<td><span>单行最高授信额</span></td>
			       				<td><span>单行最低授信额</span></td>
			       				<td><span>已用额度</span></td>
			       				<td><span>最近6个月平均使用额度</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="issuer_agency_num">20</em></td>
			       				<td><em id="issuer_num">20</em></td>
			       				<td><em id="total_credit">20</em></td>
			       				<td><em id="single_max">20</em></td>
			       				<td><em id="single_min">20</em></td>
			       				<td><em id="used_credit">20</em></td>
			       				<td><em id="average_use_credit">20</em></td>
			       			</tr>
			        	</table>
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td colspan="3"><span>对外担保信息汇总</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>担保笔数</span></td>
			       				<td><span>担保金额</span></td>
			       				<td><span>担保本金余额</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="guarantee_num">20</em></td>
			       				<td><em id="guarantee_money">20</em></td>
			       				<td><em id="guarantee_principal_money">20</em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="3"><span>其他补充信息：</span></td>
			       			</tr>
			        	</table>
			        </div>
			        <div>
			       	 	<p>四、资金用途</p>
			        	<table border="1" class="basic-info">
				        	<tr>
			       				<td colspan="4"><span>用途1：</span><em id="use_one"></em></td>
			       			</tr>
			        		<tr>
			       				<td><span>金额：</span><em id="use_one_money"></em></td>
			       				<td><span>预期使用开始时间：</span><em id="use_one_begin_time"></em></td>
			       				<td><span>预期使用结束时间：</span><em id="use_one_end_time"></em></td>
			       				<td><span>达到效果：</span><em id="use_one_effect"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="4"><span>用途2：</span><em id="use_two"></em></td>
			       			</tr>
			        		<tr>
			       				<td><span>金额：</span><em id="use_two_money"></em></td>
			       				<td><span>预期使用开始时间：</span><em id="use_two_begin_time"></em></td>
			       				<td><span>预期使用结束时间：</span><em id="use_two_end_time"></em></td>
			       				<td><span>达到效果：</span><em id="use_two_effect"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="4"><span>用途3：</span><em id="use_three"></em></td>
			       			</tr>
			        		<tr>
			       				<td><span>金额：</span><em id="use_three_money"></em></td>
			       				<td><span>预期使用开始时间：</span><em id="use_three_begin_time"></em></td>
			       				<td><span>预期使用结束时间：</span><em id="use_three_end_time"></em></td>
			       				<td><span>达到效果：</span><em id="use_three_effect"></em></td>
			       			</tr>
			       			
			        	</table> 	
			        </div>
			        <div>
			       	 	<p>五、第一还款来源</p>
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td><span>餐厅月均经营性收入：</span></td>
			       				<td><em id="res_month_income"></em></td>
			       				<td><span>餐厅月净利润：</span></td>
			       				<td><em id="res_month_profit"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="4"><span>月均利息支出总额：</span><em id="month_interest"></em></td>
			       			</tr>
			        		<tr>
			       				<td colspan="4"><span>净经营性现金流利息倍数：</span><em id="interest_multiple"></em></td>
			       			</tr>
			        	</table> 	
			        </div>
			        <div>
			       	 	<p>六、第二还款来源</p>
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td colspan="2"><span>第二还款来源综述：</span><em id="second_repayment"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>担保人1情况：</span></td>
			       			</tr>
			        		<tr>
			       				<td ><span>姓名:</span><em id="guarantorOneOne_name"></em></td>
			       				<td><span>身份证号：</span><em id="guarantorOne_ID"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>身份证正面照片是否取得</span><em></em></td>
			       				<td><span>身份证背面照片是否取得</span><em></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>住址：</span><em id="guarantorOne_address"></em></td>
			       			</tr>
			       			<tr>
			       				<td ><span>电话:</span><em id="guarantorOne_phone"></em></td>
			       				<td><span>工作单位：</span><em id="guarantorOne_work"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>户口所在地：</span><em id="guarantorOne_account"></em></td>
			       				<td><span>是否婚育：</span><em id="guarantorOne_marry"></em></td>
			       			</tr>
			       			<tr>
			       				<td ><span>全国法院被执行人信息查询：</span><em id="info_inquire_two"></em></td>
				       			<td><span>全国法院被执行人信息图片</span><em></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>深圳法院网上诉讼平台查询：</span><em id="platform_inquire_two"></em></td>
				       			<td><span>深圳法院网上诉讼平台查询图片：</span><em></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>其他说明：</span><em id="guarantorOne_instruction"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>担保人2情况：</span></td>
			       			</tr>
			        		<tr>
			       				<td ><span>姓名:</span><em id="guarantorTwo_name"></em></td>
			       				<td><span>身份证号：</span><em id="guarantorTwo_ID"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>住址：</span><em id="guarantorTwo_address"></em></td>
			       			</tr>
			       			<tr>
			       				<td ><span>电话:</span><em id="guarantorTwo_phone"></em></td>
			       				<td><span>工作单位：</span><em id="guarantorTwo_work"></em></td>
			       			</tr>
			       			<tr>
			       				<td><span>户口所在地：</span><em id="guarantorTwo_account"></em></td>
			       				<td><span>是否婚育：</span><em id="guarantorTwo_marry"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>全国法院被执行人信息查询：</span><em id="info_inquire_two"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>深圳法院网上诉讼平台查询：</span><em id="platform_inquire_two"></em></td>
			       			</tr>
			       			<tr>
			       				<td colspan="2"><span>其他说明：</span><em id="guarantorTwo_instruction"></em></td>
			       			</tr>
			       			
			       			
			        	</table> 
			        	<table border="1" class="basic-info">
			        		<tr>
			       				<td colspan="4"><span>抵押房产、车产情况：</span></td>
			       			</tr>
			       			<tr>
			       				<td><span>权利人名称</span></td>
			       				<td><span>资产类型</span></td>
			       				<td colspan="2"><span>物业名称及位置</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="right_holder_one">xxx</em></td>
			       				<td><em id="asset_type_one">xxx</em></td>
			       				<td colspan="2"><em id="name_location_one">xxx</em></td>
			       			</tr>
			       			<tr>
			       				<td><em id="right_holder_two">xxx</em></td>
			       				<td><em id="asset_type_two">xxx</em></td>
			       				<td colspan="2"><em id="name_location_two">xxx</em></td>
			       			</tr>
			       			<tr>
			       				<td><span>面积/数量</span></td>
			       				<td><span>购入日期</span></td>
			       				<td><span>评估值</span></td>
			       				<td><span>贷款余额</span></td>
			       			</tr>
			       			<tr>
			       				<td><em id="second_size_one">xxx</em></td>
			       				<td><em id="second_date_one">xxx</em></td>
			       				<td><em id="second_evaluation_one">xxx</em></td>
			       				<td><em id="second_loanMoney_one">xxx</em></td>
			       			</tr>
			       			<tr>
			       				<td><em id="second_size_two">xxx</em></td>
			       				<td><em id="second_date_two">xxx</em></td>
			       				<td><em id="second_evaluation_two">xxx</em></td>
			       				<td><em id="second_loanMoney_two">xxx</em></td>
			       			</tr>
			       		</table> 	
			        </div>
		        </div>  
			    	
			        		
			        	<!--每个大表格都有一个保存-->
					
			                                  
			</div> 
			    <br/>
			    <div class="turn-page">
			    	<button type="button" id="return">返回</button>
		       		<button type="button" id="print">打印</button>
			   </div> 
			   

			</div> 		
				<br/>
				<br/>

				</div>
				
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- /#page-wrapper -->

		</div>
		<!-- /#wrapper -->
	
 

	<script language="javascript" src="LodopFuncs.js"></script>
	<object  id="LODOP_OB" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0> 
	       <embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0></embed>
	</object>
	</body>
	<%@include file="/page/common/foot.jsp" %>
    <script src="${pageContext.request.contextPath}/resources/js/loanproject/viewP.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/js/loanproject/screen-adapter.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/resources/js/loanproject/LodopFuncs.js" type="text/javascript" charset="utf-8"></script>
	
	<script>
	$(document).ready(function(){
    	
    	init();
    	
	  });
		
	</script>
	
	
</html>

