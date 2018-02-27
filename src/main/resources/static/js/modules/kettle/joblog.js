$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + '/joblog/list',
        datatype: "json",
        colModel: [			
			{ label: 'oid', name: 'oid', index: 'OID', width: 50, key: true },
			{ label: '对象代码', name: 'ocode', index: 'OCODE', width: 80 }, 			
			{ label: '对象名称', name: 'oname', index: 'ONAME', width: 80 }, 			
			{ label: '对象描述', name: 'odescribe', index: 'ODESCRIBE', width: 80 }, 			
			{ label: '对象排序', name: 'oorder', index: 'OORDER', width: 80 }, 			
			{ label: '对象简拼', name: 'simpleSpell', index: 'SIMPLE_SPELL', width: 80 }, 			
			{ label: '对象全拼', name: 'fullSpell', index: 'FULL_SPELL', width: 80 }, 			
			{ label: '创建时间', name: 'createDate', index: 'CREATE_DATE', width: 80 }, 			
			{ label: '更新时间', name: 'updateDate', index: 'UPDATE_DATE', width: 80 }, 			
			{ label: '创建人', name: 'createUser', index: 'CREATE_USER', width: 80 }, 			
			{ label: '更新人', name: 'updateUser', index: 'UPDATE_USER', width: 80 }, 			
			{ label: '扩展信息', name: 'expand', index: 'EXPAND', width: 80 }, 			
			{ label: '是否禁用', name: 'isDisable', index: 'IS_DISABLE', width: 80 }, 			
			{ label: '备用1', name: 'flag1', index: 'FLAG1', width: 80 }, 			
			{ label: '备用2', name: 'flag2', index: 'FLAG2', width: 80 }, 			
			{ label: '作业ID', name: 'idJob', index: 'ID_JOB', width: 80 }, 			
			{ label: '作业名称', name: 'jobName', index: 'JOB_NAME', width: 80 }, 			
			{ label: '开始时间', name: 'startDate', index: 'START_DATE', width: 80 }, 			
			{ label: '结束时间', name: 'endDate', index: 'END_DATE', width: 80 }, 			
			{ label: '运行结果', name: 'result', index: 'RESULT', width: 80 }, 			
			{ label: '日志文件', name: 'logFile', index: 'LOG_FILE', width: 80 }			
        ],
		viewrecords: true,
        height: 385,
        rowNum: 10,
		rowList : [10,30,50],
        rownumbers: true, 
        rownumWidth: 25, 
        autowidth:true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader : {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames : {
            page:"page", 
            rows:"limit", 
            order: "order"
        },
        gridComplete:function(){
        	//隐藏grid底部滚动条
        	$("#jqGrid").closest(".ui-jqgrid-bdiv").css({ "overflow-x" : "hidden" }); 
        }
    });
});

var vm = new Vue({
	el:'#rrapp',
	data:{
		showList: true,
		title: null,
		jobLog: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.jobLog = {};
		},
		update: function (event) {
			var oid = getSelectedRow();
			if(oid == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(oid)
		},
		saveOrUpdate: function (event) {
			var url = vm.jobLog.oid == null ? "generator/joblog/save" : "generator/joblog/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.jobLog),
			    success: function(r){
			    	if(r.code === 0){
						alert('操作成功', function(index){
							vm.reload();
						});
					}else{
						alert(r.msg);
					}
				}
			});
		},
		del: function (event) {
			var oids = getSelectedRows();
			if(oids == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "generator/joblog/delete",
                    contentType: "application/json",
				    data: JSON.stringify(oids),
				    success: function(r){
						if(r.code == 0){
							alert('操作成功', function(index){
								$("#jqGrid").trigger("reloadGrid");
							});
						}else{
							alert(r.msg);
						}
					}
				});
			});
		},
		getInfo: function(oid){
			$.get(baseURL + "generator/joblog/info/"+oid, function(r){
                vm.jobLog = r.jobLog;
            });
		},
		reload: function (event) {
			vm.showList = true;
			var page = $("#jqGrid").jqGrid('getGridParam','page');
			$("#jqGrid").jqGrid('setGridParam',{ 
                page:page
            }).trigger("reloadGrid");
		}
	}
});