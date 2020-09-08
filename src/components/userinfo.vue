<template>
  <el-container>
    <el-header>
    <el-row class="bg-white font-lightgray margin-tb-10">
      <el-col :span="12">申请表单</el-col>
    </el-row>
    <el-row class="margin-l-r-2">
      <el-col :span="12" class="bg-blue border-r height-5"></el-col>
    </el-row>
    </el-header>
    <el-main>
        <el-row class="bg-gray">
          <el-row class="bg-white margin-grid height-30 j-left-v-center font-11 font-weight900">
            <i class="el-icon-tickets" style="color:#4194f6;font-size:14px;margin: 5px;"></i>
            请假外出、返校权限查询
          </el-row>
          <el-row class="form-name-row">姓名</el-row>
        </el-row>
        <el-row class="bg-white height-40  text-center jv-center font-12 font-lightgray ">{{this.$root.NAME}}</el-row>
        <el-row class="form-name-row ">学院</el-row>
        <el-row class="bg-white height-40  text-center jv-center font-12 font-lightgray">{{this.$root.INSTITUTE}}</el-row>
        <el-row class="form-name-row">状态码</el-row>
        <el-row class="bg-white  text-center jv-center">
          <el-img  src="../assets/greecode.png"/>
          <el-image
                style="width: 60%"
                :lazy="true"
                :src="require('@/assets/greencode.png')"
                :fit="contain"></el-image>
        </el-row>
        <el-row class="form-name-row-zhuangtai">状态</el-row>
        <el-row class="bg-white height-40  text-center jv-center font-18 font-green font-weight900 font-simhei">{{this.$root.DIRECTION}}</el-row>
        <el-row class="form-name-row">学工号</el-row>
        <el-row class="bg-white height-40  text-center jv-center font-12 font-lightgray">{{this.$root.ID}}</el-row>
        <el-row class="form-name-row">出入校时间</el-row>
        <el-row class="bg-white height-40  text-center jv-center font-12 font-lightgray">{{ nowDate + ' ' + nowTime}}</el-row>
        <el-row class="bg-gray height-10"></el-row>
    </el-main>
    <el-footer class="bg-white height-40 j-left-v-center">
          <el-button round class="margin-l-r-5 font-blue font-weight200"> &nbsp;更多&nbsp; </el-button>
    </el-footer>
  </el-container>

</template>

<script>
export default {
  name: 'userinfo',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      activeName: 'first',
      nowDate: '',
      nowTime: ''
    }
  },
  methods: {
    currentTime () {
      this.getDate()
    },
    getDate: function () {
      var _this = this
      let yy = new Date().getFullYear()
      let mm = new Date().getMonth() + 1
      let dd = new Date().getDate()
      let week = new Date().getDay()
      let hh = new Date().getHours()
      let mf = new Date().getMinutes() < 10 ? '0' + new Date().getMinutes() : new Date().getMinutes()
      let ss = new Date().getSeconds() < 10 ? '0' + new Date().getSeconds() : new Date().getSeconds()
      if (week === 1) {
        this.nowWeek = '星期一'
      } else if (week === 2) {
        this.nowWeek = '星期二'
      } else if (week === 3) {
        this.nowWeek = '星期三'
      } else if (week === 4) {
        this.nowWeek = '星期四'
      } else if (week === 5) {
        this.nowWeek = '星期五'
      } else if (week === 6) {
        this.nowWeek = '星期六'
      } else {
        this.nowWeek = '星期日'
      }
      _this.nowTime = hh + ':' + mf + ':' + ss
      _this.nowDate = yy + '-' + mm + '-' + dd
    }
  },
  mounted () {
    this.currentTime()
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.out-div{
    padding: 0px;
    margin: 0px;
}
.margin-grid{
  margin: 8px 10px 0 10px;
}
.margin-tb-10{
  margin: 10px 0 10px 0;
}
.margin-l-r-2{
  margin: 0 2px 0 2px;
}
.margin-l-r-5{
  margin: 0 10px 0 10px;
}
.width-95{
  width: 95%;
}
.border-r{
  border-radius: 1px;
}
.height-5{
  height: 3px;
}
.height-10{
  height: 10px;
}
.height-30{
  height: 30px;
}
.height-40{
  height: 40px;
}
.height-50{
  height: 50px;
}
.height-60{
  height: 60px;
}
.height-70{
  height: 70px;
}
.height-100{
  height: 100px;
}
.bg-blue{
  background-color: #4194f6;
}
.bg-white{
  background-color: #ffffff;
}
.bg-gray{
  background-color: #f2f2f2;
}
.font-gray{
  color: #929292;
}
.font-lightgray{
  color: #7b7b7b;
}
.font-green{
  color: #00ac00;
}
.font-blue{
  color: #4194f6;
}
.font-simhei{
  font-family: simhei;
}
.font-11{
  font-size: 11px;
}
.font-12{
  font-size: 12px;
}
.font-14{
  font-size: 14px;
}
.font-16{
  font-size: 16px;
}
.font-18{
  font-size: 18px;
}
.font-weight900{
  font-weight: 900;
}
.font-weight200{
  font-weight: 400;
}
.text-center{
  text-align: center;
}
.text-left{
  text-align: left;
}
.vertical-center {
      display: flex;
      align-items: center;
  }
.vertical-b {
      display: flex;
      align-items:flex-end;
  }
.justify-content {
      display: flex;
      justify-content: center;
}
.j-left-v-center {
      display: flex;
      justify-content: left;
      align-items: center;
}
.jv-center{
  display: flex;
  align-items: center;
  justify-content: center;
}
.form-name-row{
  background-color: #f2f2f2;
  height: 30px;
  display: flex;
  align-items: center;
  font-size: 12px;
  color: #929292;
  padding-left: 10px;
}
.form-name-row-zhuangtai{
  background-color: #f2f2f2;
  height: 30px;
  display: flex;
  align-items: center;
  font-size: 15px;
  color: #929292;
  padding-left: 10px;
}
.greencode{
  width: 100px;
  height: 100px;
}
.el-container{
  height:100%;
}
.el-main {
  position: absolute;
  top: 50px;
  bottom: 60px;
  overflow-y: scroll;
  padding: 0;
}
.el-header {
        position: relative;
        width: 100%;
        height: 50px;
        padding: 0;
}
.el-footer {
  position: fixed;
  width: 100%;
  padding: 0;
  margin: 0;
  bottom: 0;
}
.el-button{
  border-color: #4194f6;
}
/* .container {
    height: 100%;

    .section-box {
      overflow-y: scroll;
    }

    .header-container, footer-container {
      position: fixed;
      width: 100%
    }

    .header-container {
      top: 0
    }

    .footer-container {
      bottom: 0;
    }
  } */
</style>
