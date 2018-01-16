import Vue from 'vue'
import Router from 'vue-router'
import Search from '@/components/Search'
import Detail from '@/components/Detail'
import Hello from '@/components/Hello'
import Grid from '@/components/Grid'
import Login from '@/components/Login'
Vue.use(Router)

export default new Router({
  routes: [

    {
      path: '/',
      name: 'Grid',
      component: Grid
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    },
    {
      path: '/search',
      name: 'Search',
      component: Search
    },
    {
      path: '/detail/:id',
      name: 'Detail',
      component: Detail
    },
    {
      path: '/hello',
      name: 'Hello',
      component: Hello
    }
  ]
})
