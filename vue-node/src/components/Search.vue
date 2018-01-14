<template>
  <div class="root">
    <div class="searchbar">
      <input  name="wd" class="s_ipt"  v-model="word" v-on:keyup.enter="handleSearch"/><el-button type="primary" @click="handleSearch">搜索</el-button>
    </div>

    <ul>
      <li v-for="item in detailUrl(page.list)">
        <router-link target="_blank"  :to="{name:'Detail',params:{id:item.id}}"><div class="s-title" v-html="item.title"></div></router-link>
        <!--
        <router-link  :to="'/detail/'+item.id"><div class="s-title" v-html="item.title"></div></router-link>
        -->
        <div class="s-content" v-html="item.content"></div>
      </li>
    </ul>

    <div class="block" v-show="page.total>0">
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="page.pageNum"
        :page-sizes="[10, 20, 50, 100]"
        :page-size="page.pageSize"
        layout="total, sizes, prev, pager, next, jumper"
        :total="page.total">
      </el-pagination>
    </div>
  </div>

</template>
<script>
  export default {
    methods: {
      detailUrl(list){
        return  list.filter(function (item) {
          item.detailUrl="/detail/"+item.id;
          return true;
        })
        return list.filter(function (number) {
          return number % 2 === 0
        })
      },
      handleSizeChange(val) {
        console.log(`每页 ${val} 条`);
        var requestBody={ pageNum:this.page.pageNum,pageSize:val,word:this.word};
        this.search(requestBody);
      },
      handleCurrentChange(val) {
        console.log(`当前页: ${val}`);
        var requestBody={ pageNum:val,pageSize:this.page.pageSize,word:this.word};
        this.search(requestBody);
      },
      handleEdit(index, row) {
        console.log(index, row);
      },
      handleDelete(index, row) {
        console.log(index, row);
      },
      handleSearch(){
        var requestBody={ pageNum:1,pageSize:this.page.pageSize,word:this.word};
        this.search(requestBody);
      },
      search(requestBody){
        this.$http.post('attachment/search.json', requestBody).then((response) => {
          if (response.status == 200) {
            var responseJson = response.body;
            if (responseJson.errcode == 200) {
              this.page = responseJson.data;
              return;
            }
          }

        }, (response) => {
          console.log(response);
        });
      }

    },
    data() {
      return {
          word:"",
        page: {
          "pageNum": 1,
          "pageSize": 10,
          "size": 0,
          "startRow": 0,
          "endRow": 0,
          "total": 0,
          "pages": 0,
          "list": [

          ]
        }
      };
    }
  }
</script>
<style>
  em {
    font-style: normal;
    color: #a94442;
  }
</style>
<style scoped>
  .s_ipt {
    width: 600px;
    height: 35px;
    font: 16px/18px arial;
    line-height: 35px;
    margin: 6px 10px 0 7px;
    padding: 0;
  }
  .searchbar{
    text-align: left;
  }

  .root {
    width: 100%;
    padding: 10px 100px;
    text-align: center;
  }

  ul li {
    text-align: left;
    padding: 10px;
  }

  .s-title {
    line-height: 1.54;
    font-weight: 400;
    font-size: medium;
  }

  .s-content {
    font-size: 13px;
  }

</style>
