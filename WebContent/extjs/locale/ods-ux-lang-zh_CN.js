Ext.namespace('ods.ux');
Ext.namespace('ods.ux.tree');
Ext.namespace('Ext.ux');
Ext.namespace('Ext.ux.form');
/*
if (Ext.data.Store) {
	Ext.apply(Ext.data.Store.prototype, {
		sortData:function(f, direction) {
	        var st = this.fields.get(f).sortType;
	        var fn = function(r1, r2){
	            var v1 = st(r1.data[f]), v2 = st(r2.data[f]);
	            if (typeof(v1) == "string") {
	            	return v1.localeCompare(v2);
	            }
	            return v1 > v2 ? 1 : (v1 < v2 ? -1 : 0);
	        };
	        this.data.sort(direction, fn);
	        if(this.snapshot && this.snapshot != this.data){
	            this.snapshot.sort(direction, fn);
	        }
		}
	});
}
 * */
ods.ux.UserField = {
	fieldLabel: '用户名',
	blankText:'用户名不能为空',
	selectOnFocus:true,
	maxLength:16,
	maxLengthText:'用户名的长度不能大于16位',
	minLengthText:'用户名的长度不能小于3位',
	allowBlank:false,
	minLength:3,
	tabIndex:1, 
	listeners :{
		'render' : function(c) {
			c.focus(false, 2000);
		}
	},	
	name: 'user.userLoginName'
};
ods.ux.PasswordField = {
    fieldLabel: '密码',
    blankText:'密码不能为空',
    tabIndex:2,
    allowBlank:false,
    inputType: 'password',
    name: 'user.userPassword'
};
ods.ux.datas = [
		{boxLabel:'记住我?',inputValue:'1',name:'enabled'}
	];
ods.ux.loginButtonText = '登录';
ods.ux.loginWindowText = '系统提示:请根据自己的工作性质选择不同的登录性质进行登录。';
ods.ux.waitTitle = '请等待...';
ods.ux.waitMsg = '正在验证用户...';

if (Ext.data.Connection) {
	Ext.apply(Ext.data.Connection.prototype, { 
		sessionTimeOutText:'<b>会话超时,请重新登录!<b>'
	});
} 
if (Ext.ux.form.LovCombo) {
	Ext.apply(Ext.ux.form.LovCombo.prototype, { 
		checkAllElText:'全选'
	});	
}
if (Ext.form.HtmlEditor) {
	Ext.apply(Ext.form.HtmlEditor.prototype, {
		fontFamilies:['宋体','Arial',
        'Courier New',
        'Tahoma',
        'Times New Roman',
        'Verdana']
	});
}
if (Ext.form.VTypes) {
	Ext.apply(Ext.form.VTypes, { 
		ipText:'无效的IP地址'
		,driveCharText:'盘符必须是一个英文字符'
		,folderText:'文件名不能包含下列任何字符之一: \ / : * ? " < > | '
		,filedirText:'文件名不能包含下列任何字符之一: \ / : * ? " < > | '
		,passwordText:  '两次密码不一致'		
	});	
}
if (ods.ux.tree.FilterTree) {
	Ext.apply(ods.ux.tree.FilterTree.prototype, {
		emptyFilterText:'查找菜单'
	});
}

if (ods.ux.FormPanel) {
	Ext.apply(ods.ux.FormPanel.prototype, {
		waitTitle:'请等待'
		,messageTitle:'系统消息'
		,waitMsg:'正在进行数据交互，请稍候.....'
	});		
}
if (ods.ux.Grid) {
	Ext.apply(ods.ux.Grid.prototype, {
		loadMaskMsg:'正在读取数据...'
	});		
}
//if (Ext.ux.window.MessageWindow) {
//	if(Ext.ux.window.MessageWindow){
//		Ext.apply(Ext.ux.window.MessageWindow.prototype, {
//			textUnpin:'不固定就关闭窗口'
//		}); 
//	} 
//}
