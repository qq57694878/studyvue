import request from '@/utils/request'

export function getList(params) {
  return request({
    url: '/document/list',
    method: 'post',
    data:params
  })
}
