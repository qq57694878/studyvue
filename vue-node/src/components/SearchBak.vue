<template>
    <div class="root">
      <el-table
        :data="page.list"
        border
       >
        <el-table-column
          prop="id"
          label="id"
          width="180">
        </el-table-column>
        <el-table-column
          prop="date"
          label="标题"
          width="200">
        </el-table-column>
        <el-table-column
        prop="content"
        label="内容"
        width="300">
      </el-table-column>
        <el-table-column
          prop="type"
          label="类型"
          width="180">
        </el-table-column>
        <el-table-column
          prop="createtime"
          label="创建时间"
          width="180">
        </el-table-column>
        <el-table-column label="操作">
          <template scope="scope">
            <el-button
              size="small"
              @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
            <el-button
              size="small"
              type="danger"
              @click="handleDelete(scope.$index, scope.row)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>

      <div class="block">
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
      handleSizeChange(val) {
        console.log(`每页 ${val} 条`);
      },
      handleCurrentChange(val) {
        console.log(`当前页: ${val}`);
      },
   handleEdit(index, row) {
    console.log(index, row);
  },
  handleDelete(index, row) {
    console.log(index, row);
  }
    },
    data() {
      return {
        "page": {
          "pageNum": 1,
          "pageSize": 10,
          "size": 10,
          "startRow": 1,
          "endRow": 10,
          "total": 123,
          "pages": 13,
          "list": [
            {
              "id": 259,
              "title": "<em>标题</em>259",
              "content": "内容259",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 271,
              "title": "<em>标题</em>271",
              "content": "内容271",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 306,
              "title": "<em>标题</em>306",
              "content": "内容306",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 309,
              "title": "<em>标题</em>309",
              "content": "内容309",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 325,
              "title": "<em>标题</em>325",
              "content": "内容325",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 328,
              "title": "<em>标题</em>328",
              "content": "内容328",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 350,
              "title": "<em>标题</em>350",
              "content": "内容350",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 79,
              "title": "<em>标题</em>79",
              "content": "内容79",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 89,
              "title": "<em>标题</em>89",
              "content": "内容89",
              "type": "11",
              "createtime": "2017-01-01"
            },
            {
              "id": 411,
              "title": "<em>标题</em>411",
              "content": "内容411",
              "type": "11",
              "createtime": "2017-01-01"
            }
          ]
        }
      };
    }
  }
</script>
<style scoped>
  .root{
    width:1500px;
    text-align: center;
  }
</style>
