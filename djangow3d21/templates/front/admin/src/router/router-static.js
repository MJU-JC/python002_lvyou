import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import zengjiajifen from '@/views/modules/zengjiajifen/list'
    import goumaimenpiao from '@/views/modules/goumaimenpiao/list'
    import dakagonggao from '@/views/modules/dakagonggao/list'
    import techanxinxi from '@/views/modules/techanxinxi/list'
    import yonghuqiandao from '@/views/modules/yonghuqiandao/list'
    import jingdianxinxi from '@/views/modules/jingdianxinxi/list'
    import discussjiudianxinxi from '@/views/modules/discussjiudianxinxi/list'
    import jiudianxinxi from '@/views/modules/jiudianxinxi/list'
    import discussyoujifenxiang from '@/views/modules/discussyoujifenxiang/list'
    import goumaitechan from '@/views/modules/goumaitechan/list'
    import jifenduihuan from '@/views/modules/jifenduihuan/list'
    import discusstechanxinxi from '@/views/modules/discusstechanxinxi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import guanggaozixun from '@/views/modules/guanggaozixun/list'
    import koujianjifen from '@/views/modules/koujianjifen/list'
    import discussjingdianxinxi from '@/views/modules/discussjingdianxinxi/list'
    import diqumingcheng from '@/views/modules/diqumingcheng/list'
    import youjifenxiang from '@/views/modules/youjifenxiang/list'
    import jiudianyuding from '@/views/modules/jiudianyuding/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/zengjiajifen',
        name: '增加积分',
        component: zengjiajifen
      }
      ,{
	path: '/goumaimenpiao',
        name: '购买门票',
        component: goumaimenpiao
      }
      ,{
	path: '/dakagonggao',
        name: '打卡公告',
        component: dakagonggao
      }
      ,{
	path: '/techanxinxi',
        name: '特产信息',
        component: techanxinxi
      }
      ,{
	path: '/yonghuqiandao',
        name: '用户签到',
        component: yonghuqiandao
      }
      ,{
	path: '/jingdianxinxi',
        name: '景点信息',
        component: jingdianxinxi
      }
      ,{
	path: '/discussjiudianxinxi',
        name: '酒店信息评论',
        component: discussjiudianxinxi
      }
      ,{
	path: '/jiudianxinxi',
        name: '酒店信息',
        component: jiudianxinxi
      }
      ,{
	path: '/discussyoujifenxiang',
        name: '游记分享评论',
        component: discussyoujifenxiang
      }
      ,{
	path: '/goumaitechan',
        name: '购买特产',
        component: goumaitechan
      }
      ,{
	path: '/jifenduihuan',
        name: '积分兑换',
        component: jifenduihuan
      }
      ,{
	path: '/discusstechanxinxi',
        name: '特产信息评论',
        component: discusstechanxinxi
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/guanggaozixun',
        name: '广告资讯',
        component: guanggaozixun
      }
      ,{
	path: '/koujianjifen',
        name: '扣减积分',
        component: koujianjifen
      }
      ,{
	path: '/discussjingdianxinxi',
        name: '景点信息评论',
        component: discussjingdianxinxi
      }
      ,{
	path: '/diqumingcheng',
        name: '地区名称',
        component: diqumingcheng
      }
      ,{
	path: '/youjifenxiang',
        name: '游记分享',
        component: youjifenxiang
      }
      ,{
	path: '/jiudianyuding',
        name: '酒店预定',
        component: jiudianyuding
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
