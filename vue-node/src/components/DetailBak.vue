<template>
  <div class="root">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h3 class="panel-title">{{article.title}} - id:{{article.id}} - type:{{article.type}} - createtime:{{article.createtime}}</h3>
      </div>
      <div class="panel-body">
           <p v-html="article.content"></p>
      </div>
    </div>
  </div>

</template>
<script>
  export default {
    created:function(){
      console.log("1");
      init();
    },
    methods: {
      init(){
        var requestBody={"id":id};
        this.$http.post('article/findOne.json', requestBody).then((response) => {
          if (response.status == 200) {
            var responseJson = response.body;
            if (responseJson.errcode == 200) {
              this.article = responseJson.data;
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
        id:$route.params.id,
        article: {
           title:"",
           content:"",
           type:"",
           id:"",
          createtime:""
        }
      };
    }
  }
</script>

<style scoped>

  .root {
    width: 100%;
    padding: 10px 100px;
    text-align: center;
  }

</style>
