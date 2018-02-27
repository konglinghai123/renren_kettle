$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + '/crtask/list',
        datatype: "json",
        colModel: [			
			{ label: 'id', name: 'id', index: 'ID', width: 50, key: true },
			{ label: '状态：0=停止，1=启动', name: 'state', index: 'STATE', width: 80 }, 			
			{ label: '名称', name: 'name', index: 'NAME', width: 80 }, 			
			{ label: '表达式', name: 'exp', index: 'EXP', width: 80 }, 			
			{ label: '实现类', name: 'javaClass', index: 'JAVA_CLASS', width: 80 }, 			
			{ label: '说明', name: 'info', index: 'INFO', width: 80 }, 			
			{ label: '对象主键', name: 'oid', index: 'OID', width: 80 }, 			
			{ label: '对象代码', name: 'ocode', index: 'OCODE', width: 80 }, 			
			{ label: '对象名称', name: 'oname', index: 'ONAME', width: 80 }, 			
			{ label: '对象描述', name: 'odescribe', index: 'ODESCRIBE', width: 80 }, 			
			{ label: '对象排序', name: 'oorder', index: 'OORDER', width: 80 }, 			
			{ label: '对象简拼', name: 'simpleSpell', index: 'SIMPLE_SPELL', width: 80 }, 			
			{ label: '对象全拼', name: 'fullSpell', index: 'FULL_SPELL', width: 80 }, 			
			{ label: '创建时间', name: 'createDate', index: 'CREATE_DATE', width: 80 }, 			
			{ label: '更新时间', name: 'updateDate', index: 'UPDATE_DATE', width: 80 }, 			
			{ label: '扩展信息', name: 'expand', index: 'EXPAND', width: 80 }, 			
			{ label: '是否禁用', name: 'isDisable', index: 'IS_DISABLE', width: 80 }, 			
			{ label: 'JSON格式配置', name: 'configInfo', index: 'CONFIG_INFO', width: 80 }			
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
		crTask: {}
	},
	methods: {
		query: function () {
			vm.reload();
		},
		add: function(){
			vm.showList = false;
			vm.title = "新增";
			vm.crTask = {};
		},
		update: function (event) {
			var id = getSelectedRow();
			if(id == null){
				return ;
			}
			vm.showList = false;
            vm.title = "修改";
            
            vm.getInfo(id)
		},
		saveOrUpdate: function (event) {
			var url = vm.crTask.id == null ? "generator/crtask/save" : "generator/crtask/update";
			$.ajax({
				type: "POST",
			    url: baseURL + url,
                contentType: "application/json",
			    data: JSON.stringify(vm.crTask),
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
			var ids = getSelectedRows();
			if(ids == null){
				return ;
			}
			
			confirm('确定要删除选中的记录？', function(){
				$.ajax({
					type: "POST",
				    url: baseURL + "generator/crtask/delete",
                    contentType: "application/json",
				    data: JSON.stringify(ids),
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
		getInfo: function(id){
			$.get(baseURL + "generator/crtask/info/"+id, function(r){
                vm.crTask = r.crTask;
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