import Vue from 'vue'
import Router from 'vue-router'
import userinfo from '@/components/userinfo'
import setinfo from '../components/setinfo.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/userinfo',
      name: 'userinfo',
      component: userinfo,
      meta: {
        title: '请假外出、返校权限查询通行码'
      }
    },
    {
      path: '/',
      name: 'setinfo',
      component: setinfo,
      meta: {
        title: 'FreeBUPT'
      }
    }
  ]
})
