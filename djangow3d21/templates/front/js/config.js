
var projectName = '旅游门户系统的设计与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
        name: '我的收藏',
        url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '广告资讯',
	url: './pages/guanggaozixun/list.html'
}, 
{
	name: '景点信息',
	url: './pages/jingdianxinxi/list.html'
}, 
{
	name: '特产信息',
	url: './pages/techanxinxi/list.html'
}, 
{
	name: '酒店信息',
	url: './pages/jiudianxinxi/list.html'
}, 
{
	name: '打卡公告',
	url: './pages/dakagonggao/list.html'
}, 
{
	name: '游记分享',
	url: './pages/youjifenxiang/list.html'
}, 

]

var adminurl =  "http://localhost:8080/djangow3d21/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除","增加积分","扣减积分"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","删除"],"menu":"增加积分","menuJump":"列表","tableName":"zengjiajifen"}],"menu":"增加积分管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","删除"],"menu":"扣减积分","menuJump":"列表","tableName":"koujianjifen"}],"menu":"扣减积分管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除"],"menu":"广告资讯","menuJump":"列表","tableName":"guanggaozixun"}],"menu":"广告资讯管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除","查看评论"],"menu":"景点信息","menuJump":"列表","tableName":"jingdianxinxi"}],"menu":"景点信息管理"},{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除"],"menu":"地区名称","menuJump":"列表","tableName":"diqumingcheng"}],"menu":"地区名称管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除","查看评论"],"menu":"特产信息","menuJump":"列表","tableName":"techanxinxi"}],"menu":"特产信息管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除","查看评论"],"menu":"酒店信息","menuJump":"列表","tableName":"jiudianxinxi"}],"menu":"酒店信息管理"},{"child":[{"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除"],"menu":"打卡公告","menuJump":"列表","tableName":"dakagonggao"}],"menu":"打卡公告管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","删除","报表"],"menu":"购买门票","menuJump":"列表","tableName":"goumaimenpiao"}],"menu":"购买门票管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看","删除","报表"],"menu":"购买特产","menuJump":"列表","tableName":"goumaitechan"}],"menu":"购买特产管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","删除","报表","审核"],"menu":"酒店预定","menuJump":"列表","tableName":"jiudianyuding"}],"menu":"酒店预定管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","删除","审核"],"menu":"积分兑换","menuJump":"列表","tableName":"jifenduihuan"}],"menu":"积分兑换管理"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["新增","查看","修改","删除","查看评论","审核"],"menu":"游记分享","menuJump":"列表","tableName":"youjifenxiang"}],"menu":"游记分享管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","删除"],"menu":"用户签到","menuJump":"列表","tableName":"yonghuqiandao"}],"menu":"用户签到管理"},{"child":[{"appFrontIcon":"cuIcon-goodsnew","buttons":["查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"广告资讯列表","menuJump":"列表","tableName":"guanggaozixun"}],"menu":"广告资讯模块"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","购买门票"],"menu":"景点信息列表","menuJump":"列表","tableName":"jingdianxinxi"}],"menu":"景点信息模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看","购买特产","积分兑换"],"menu":"特产信息列表","menuJump":"列表","tableName":"techanxinxi"}],"menu":"特产信息模块"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","酒店预定"],"menu":"酒店信息列表","menuJump":"列表","tableName":"jiudianxinxi"}],"menu":"酒店信息模块"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","用户签到"],"menu":"打卡公告列表","menuJump":"列表","tableName":"dakagonggao"}],"menu":"打卡公告模块"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"游记分享列表","menuJump":"列表","tableName":"youjifenxiang"}],"menu":"游记分享模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看"],"menu":"增加积分","menuJump":"列表","tableName":"zengjiajifen"}],"menu":"增加积分管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看"],"menu":"扣减积分","menuJump":"列表","tableName":"koujianjifen"}],"menu":"扣减积分管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","删除","支付"],"menu":"购买门票","menuJump":"列表","tableName":"goumaimenpiao"}],"menu":"购买门票管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看","删除","支付"],"menu":"购买特产","menuJump":"列表","tableName":"goumaitechan"}],"menu":"购买特产管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","删除","支付"],"menu":"酒店预定","menuJump":"列表","tableName":"jiudianyuding"}],"menu":"酒店预定管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看"],"menu":"积分兑换","menuJump":"列表","tableName":"jifenduihuan"}],"menu":"积分兑换管理"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["新增","查看","修改","删除","查看评论"],"menu":"游记分享","menuJump":"列表","tableName":"youjifenxiang"}],"menu":"游记分享管理"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看","删除"],"menu":"用户签到","menuJump":"列表","tableName":"yonghuqiandao"}],"menu":"用户签到管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"广告资讯列表","menuJump":"列表","tableName":"guanggaozixun"}],"menu":"广告资讯模块"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","购买门票"],"menu":"景点信息列表","menuJump":"列表","tableName":"jingdianxinxi"}],"menu":"景点信息模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看","购买特产","积分兑换"],"menu":"特产信息列表","menuJump":"列表","tableName":"techanxinxi"}],"menu":"特产信息模块"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","酒店预定"],"menu":"酒店信息列表","menuJump":"列表","tableName":"jiudianxinxi"}],"menu":"酒店信息模块"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","用户签到"],"menu":"打卡公告列表","menuJump":"列表","tableName":"dakagonggao"}],"menu":"打卡公告模块"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"游记分享列表","menuJump":"列表","tableName":"youjifenxiang"}],"menu":"游记分享模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
