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
import adminexam from '@/views/modules/shijuanliebiao/exam'
    import shucaixinxi from '@/views/modules/shucaixinxi/list'
    import news from '@/views/modules/news/list'
    import gongyingshang from '@/views/modules/gongyingshang/list'
    import lunbotuguanli from '@/views/modules/lunbotuguanli/list'
    import yifahuodingdan from '@/views/modules/yifahuodingdan/list'
    import storeup from '@/views/modules/storeup/list'
    import yiwanchengdingdan from '@/views/modules/yiwanchengdingdan/list'
    import yiquxiaodingdan from '@/views/modules/yiquxiaodingdan/list'
    import yizhifudingdan from '@/views/modules/yizhifudingdan/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yituikuandingdan from '@/views/modules/yituikuandingdan/list'
    import liaotianhuifu from '@/views/modules/liaotianhuifu/list'
    import luntanguanli from '@/views/modules/luntanguanli/list'
    import liaotianxinxi from '@/views/modules/liaotianxinxi/list'

//2.配置路由   注意：名字
const routes = [
    {
        path: '/index', name:'index', component: Index, children: [{
            // 这里不设置值，是把main作为默认页面
            path: '/',
            name: 'home',
            component: Home
        },{
            path: '/updatePassword',
            name: 'updatePassword',
            component: UpdatePassword
        } ,{
            path: '/pay',
            name: 'pay',
            component: pay
        } ,{
            path: '/center',
            name: 'center',
            component: center
        } 
                    ,{
                path: '/shucaixinxi',
                name: 'shucaixinxi',
                component: shucaixinxi
            } 
                    ,{
                path: '/news',
                name: 'news',
                component: news
            } 
                    ,{
                path: '/gongyingshang',
                name: 'gongyingshang',
                component: gongyingshang
            } 
                    ,{
                path: '/lunbotuguanli',
                name: 'lunbotuguanli',
                component: lunbotuguanli
            } 
                    ,{
                path: '/yifahuodingdan',
                name: 'yifahuodingdan',
                component: yifahuodingdan
            } 
                    ,{
                path: '/storeup',
                name: 'storeup',
                component: storeup
            } 
                    ,{
                path: '/yiwanchengdingdan',
                name: 'yiwanchengdingdan',
                component: yiwanchengdingdan
            } 
                    ,{
                path: '/yiquxiaodingdan',
                name: 'yiquxiaodingdan',
                component: yiquxiaodingdan
            } 
                    ,{
                path: '/yizhifudingdan',
                name: 'yizhifudingdan',
                component: yizhifudingdan
            } 
                    ,{
                path: '/yonghu',
                name: 'yonghu',
                component: yonghu
            } 
                    ,{
                path: '/yituikuandingdan',
                name: 'yituikuandingdan',
                component: yituikuandingdan
            } 
                    ,{
                path: '/liaotianhuifu',
                name: 'liaotianhuifu',
                component: liaotianhuifu
            } 
                    ,{
                path: '/luntanguanli',
                name: 'luntanguanli',
                component: luntanguanli
            } 
                    ,{
                path: '/liaotianxinxi',
                name: 'liaotianxinxi',
                component: liaotianxinxi
            } 
                ]
    },
    { path: '/adminexam', name: 'adminexam', component: adminexam },
    { path: '/login', name:'login', component: Login },
    { path: '/register', name:'register', component: register },
    { path: '/', redirect: '/index/' },      /*默认跳转路由*/
    { path: '*', component: NotFound }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
    mode: 'hash',   /*hash模式改为history*/
    routes // （缩写）相当于 routes: routes
})

export default router;

