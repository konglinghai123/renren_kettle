$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + '/vjob/list',
        datatype: "json",
        colModel: [			
			{ label: 'idJob', name: 'idJob', index: 'id_job', width: 50, key: true },
			// { label: '', name: 'idDirectory', index: 'id_directory', width: 80 },
			// { label: '', name: 'timing', index: 'timing', width: 80 },
			// { label: '', name: 'name', index: 'name', width: 80 },
			// { label: '', name: 'description', index: 'description', width: 80 },
			// { label: '', name: 'extendedDescription', index: 'extended_description', width: 80 },
			// { label: '', name: 'jobVersion', index: 'job_version', width: 80 },
			// { label: '', name: 'jobStatus', index: 'job_status', width: 80 },
			// { label: '', name: 'idDatabaseLog', index: 'id_database_log', width: 80 },
			// { label: '', name: 'tableNameLog', index: 'table_name_log', width: 80 },
			// { label: '', name: 'createdUser', index: 'created_user', width: 80 },
			// { label: '', name: 'createdDate', index: 'created_date', width: 80 },
			// { label: '', name: 'modifiedUser', index: 'modified_user', width: 80 },
			// { label: '', name: 'modifiedDate', index: 'modified_date', width: 80 },
			// { label: '', name: 'useBatchId', index: 'use_batch_id', width: 80 },
			// { label: '', name: 'passBatchId', index: 'pass_batch_id', width: 80 },
			// { label: '', name: 'useLogfield', index: 'use_logfield', width: 80 },
			// { label: '', name: 'sharedFile', index: 'shared_file', width: 80 },
			{ label: '运行状态', name: 'runStatus', index: 'run_status', width: 80 }, 			
			{ label: '最后更新时间', name: 'lastUpdate', index: 'last_update', width: 80 }, 			
			{ label: '自动重启次数', name: 'autoRestartNum', index: 'auto_restart_num', width: 80 }, 			
			{ label: '资源库代码', name: 'repositoryCode', index: 'repository_code', width: 80 }, 			
			{ label: '运行在', name: 'projectCode', index: 'project_code', width: 80 }			
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
		vJob: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.vJob = {};
		},
		update: function (event) {
			var idJob = getSelectedRow();
			if(idJob == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(idJob)
		},
		saveOrUpdate: function (event) {
			var url = vm.vJob.idJob == null ? "generator/vjob/save" : "generator/vjob/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.vJob),
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
			var idJobs = getSelectedRows();
			if(idJobs == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "generator/vjob/delete",
                    contentType: "application/json",
				    data: JSON.stringify(idJobs),
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
		getInfo: function(idJob){
			$.get(baseURL + "generator/vjob/info/"+idJob, function(r){
                vm.vJob = r.vJob;
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