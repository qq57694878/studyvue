<template>
  <div class="root">
    <div class="searchbar">
      <input  name="wd" class="s_ipt"  v-model="word" v-on:keyup.enter="handleSearch"/><el-button type="primary" @click="handleSearch">搜索</el-button>
    </div>

    <el-table
      :data="page.content"
      style="width: 100%">
      <el-table-column
        label="标题"
        width="180">
        <template slot-scope="scope">
          <el-popover trigger="hover" placement="top">
            <p>标题: {{ scope.row.title }}</p>
            <div slot="reference" class="name-wrapper">
              <el-tag size="medium">{{ scope.row.title }}</el-tag>
            </div>
          </el-popover>
        </template>
      </el-table-column>
      <el-table-column
        label="内容"
        width="180">
        <template slot-scope="scope">
          <el-popover trigger="hover" placement="top">
            <p>内容: {{ scope.row.content }}</p>
            <div slot="reference" class="name-wrapper">
              <el-tag size="medium">{{ scope.row.content }}</el-tag>
            </div>
          </el-popover>
        </template>
      </el-table-column>
      <el-table-column
        label="创建日期"
        width="180">
        <template slot-scope="scope">
          <i class="el-icon-time"></i>
          <span style="margin-left: 10px">{{ scope.row.createDate }}</span>
        </template>
      </el-table-column>

      <el-table-column label="操作">
        <template slot-scope="scope">
          <el-button
            size="mini"
            @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <div class="block">
      <span class="demonstration">完整功能</span>
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="page.pageNum-1"
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
    created() {
      this.handleCurrentChange(1);
    },
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
        this.$http.post('table/list.json', requestBody).then((response) => {
          if (response.status == 200) {
            var responseJson = response.body;
            if (responseJson.errcode == 200) {
              this.page = responseJson.data;
              console.log(JSON.stringify(this.page));
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


</style>
