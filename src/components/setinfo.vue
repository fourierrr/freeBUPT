<template>
  <div class="height100 v-center">
    <el-card>
      <el-form :model="ruleForm"  label-position="top" :rules="rules" ref="ruleForm" label-width="50px">
        <el-form-item label="姓名" prop="name">
          <el-input type="text" v-model="ruleForm.name" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="学院" prop="institute">
          <el-input type="text" v-model="ruleForm.institute" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="学工号" prop="id">
          <el-input v-model="ruleForm.id"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="submit('in')">进校</el-button>
          <el-button type="primary" @click="submit('out')">出校</el-button>
          <el-button @click="resetForm('ruleForm')">重置</el-button>
        </el-form-item>
      </el-form>
    </el-card>
  </div>
</template>
<script>
export default {
  data () {
    return {
      ruleForm: {
        name: '',
        institute: '',
        id: ''
      },
      rules: {
        name: [
          { required: true, message: '请输入姓名', trigger: 'blur' },
          { min: 2, max: 5, message: '长度在 2 到 5 个字符', trigger: 'blur' }
        ],
        institute: [
          { required: true, message: '请输入学院', trigger: 'blur' },
          { min: 3, max: 15, message: '长度在 3 到 15 个字符', trigger: 'blur' }
        ],
        id: [
          { required: true, message: '请输入学工号', trigger: 'blur' },
          { min: 10, max: 10, message: '学号必须为10个字符', trigger: 'blur' }
        ]
      }
    }
  },
  methods: {
    submit (inorout) {
      this.$refs['ruleForm'].validate((valid) => {
        if (valid) {
          if (inorout === 'in') {
            this.$root.DIRECTION = '允许入校'
          } else {
            this.$root.DIRECTION = '允许出校'
          }

          this.$root.NAME = this.ruleForm.name
          this.$root.INSTITUTE = this.ruleForm.institute
          this.$root.ID = this.ruleForm.id
          this.$router.push({path: '/userinfo'})
        } else {
          console.log('error submit!!')
          return false
        }
      })
    },
    resetForm (formName) {
      this.$refs[formName].resetFields()
    }
  }
}
</script>
<style>
.height100{
  height: 100%;
}
.v-center{
  display: flex;
  align-items: center;
}
</style>
