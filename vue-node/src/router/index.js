import Vue from 'vue'
import Router from 'vue-router'
import Search from '@/components/Search'
import Detail from '@/components/Detail'
import Hello from '@/components/Hello'
import Grid from '@/components/Grid'
Vue.use(Router)

export default new Router({
  routes: [

    {
      path: '/',
      name: 'Grid',
      component: Grid
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
