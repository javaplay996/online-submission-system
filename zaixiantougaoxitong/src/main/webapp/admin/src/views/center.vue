<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      label-width="80px"
    >  
     <el-row>
                              <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="用户名" prop="yonghuName">
          <el-input v-model="ruleForm.yonghuName" readonly              placeholder="用户名" clearable></el-input>
        </el-form-item>
      </el-col>
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='bianji'"  label="用户名" prop="bianjiName">
	      <el-input v-model="ruleForm.bianjiName" readonly              placeholder="用户名" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='zhuanjia'"  label="用户名" prop="zhuanjia">
	      <el-input v-model="ruleForm.zhuanjia" readonly              placeholder="用户名" clearable></el-input>
	    </el-form-item>
	  </el-col>
                                          <el-col :span="12">
        <el-form-item   v-if="flag!='users'"  label="账户" prop="username">
          <el-input v-model="ruleForm.username"               placeholder="账户" clearable></el-input>
        </el-form-item>
      </el-col>
                        <el-col :span="24">  
        <el-form-item v-if="flag=='yonghu'" label="头像" prop="yonghuPhoto">
          <file-upload
          tip="点击上传头像"
          action="file/upload"
          :limit="3"
          :multiple="true"
          :fileUrls="ruleForm.yonghuPhoto?ruleForm.yonghuPhoto:''"
          @change="yonghutouxiangUploadChange"
          ></file-upload>
        </el-form-item>
      </el-col>
	  <el-col :span="24">
	    <el-form-item v-if="flag=='zhuanjia'" label="头像" prop="zhuanjiaPhoto">
	      <file-upload
	      tip="点击上传头像"
	      action="file/upload"
	      :limit="3"
	      :multiple="true"
	      :fileUrls="ruleForm.zhuanjiaPhoto?ruleForm.zhuanjiaPhoto:''"
	      @change="yonghutouxiangUploadChange"
	      ></file-upload>
	    </el-form-item>
	  </el-col>
	  <el-col :span="24">
	    <el-form-item v-if="flag=='bianji'" label="头像" prop="bianjiPhoto">
	      <file-upload
	      tip="点击上传头像"
	      action="file/upload"
	      :limit="3"
	      :multiple="true"
	      :fileUrls="ruleForm.bianjiPhoto?ruleForm.bianjiPhoto:''"
	      @change="yonghutouxiangUploadChange"
	      ></file-upload>
	    </el-form-item>
	  </el-col>
                        <el-col :span="12">
        <el-form-item v-if="flag!='users'"  label="性别" prop="sexTypes">
          <el-select v-model="ruleForm.sexTypes" placeholder="请选择性别">
            <el-option
                v-for="(item,index) in yonghuxingbieOptions"
				v-bind:key="index"
               :label="item.indexName"
               :value="item.codeIndex">
            </el-option>
          </el-select>
        </el-form-item>
      </el-col>
	  
	  <el-col :span="12">
	    <el-form-item v-if="flag=='bianji' || flag=='zhuanjia'"  label="负责稿件类型" prop="gaojianTypes">
	      <el-select v-model="ruleForm.gaojianTypes" placeholder="负责稿件类型">
	        <el-option
	            v-for="(item,index) in gaojianTypesOptions"
	  				v-bind:key="index"
	           :label="item.indexName"
	           :value="item.codeIndex">
	        </el-option>
	      </el-select>
	    </el-form-item>
	  </el-col>
	  
                        <el-col :span="12">
        <el-form-item   v-if="flag=='yonghu'"  label="联系电话" prop="yonghuPhone">
          <el-input v-model="ruleForm.yonghuPhone"               placeholder="联系电话" clearable></el-input>
        </el-form-item>
      </el-col>
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='bianji'"  label="联系电话" prop="bianjiPhone">
	      <el-input v-model="ruleForm.bianjiPhone"               placeholder="联系电话" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='zhuanjia'"  label="联系电话" prop="zhuanjiaPhone">
	      <el-input v-model="ruleForm.zhuanjiaPhone"               placeholder="联系电话" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  
	  
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='yonghu'"  label="邮箱" prop="yonghuEmail">
	      <el-input v-model="ruleForm.yonghuEmail"               placeholder="邮箱" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='bianji'"  label="邮箱" prop="bianjiEmail">
	      <el-input v-model="ruleForm.bianjiEmail"               placeholder="邮箱" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='zhuanjia'"  label="邮箱" prop="zhuanjiaEmail">
	      <el-input v-model="ruleForm.zhuanjiaEmail"               placeholder="邮箱" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  
	  
	  
	  
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='yonghu'"  label="身份证号" prop="yonghuNumber">
	      <el-input v-model="ruleForm.yonghuNumber"               placeholder="身份证号" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='bianji'"  label="身份证号" prop="bianjiNumber">
	      <el-input v-model="ruleForm.bianjiNumber"               placeholder="身份证号" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  <el-col :span="12">
	    <el-form-item   v-if="flag=='zhuanjia'"  label="身份证号" prop="zhuanjiaNumber">
	      <el-input v-model="ruleForm.zhuanjiaNumber"               placeholder="身份证号" clearable></el-input>
	    </el-form-item>
	  </el-col>
	  
	  
        <el-input v-if="flag=='users'"  v-model="ruleForm.username" 
        placeholder="用户名"></el-input>
      </el-form-item>
      <el-col :span="24">
      <el-form-item>
        <el-button type="primary" @click="onUpdateHandler">修 改</el-button>
      </el-form-item>
      </el-col>
      </el-row>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/validate";

export default {
  data() {
    return {
      ruleForm: {},
      flag: '',
      usersFlag: false,
       yonghuxingbieOptions: [],
	   gaojianTypesOptions: [],
                                                                                                                                                                                                                };
  },
  mounted() {
    var table = this.$storage.get("sessionTable");
    this.flag = table;
    this.$http({
      url: `${this.$storage.get("sessionTable")}/session`,
      method: "get"
    }).then(({ data }) => {
      if (data && data.code === 0) {
        this.ruleForm = data.data;
		/* 查询性别信息*/
		this.$http({
		    url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=sex_types`,
		    method: "get"
		}).then(({data}) => {
		    if (data && data.code === 0) {
		      this.yonghuxingbieOptions = data.data.list;
			  /* 查询稿件类型信息*/
			  this.$http({
			      url: `dictionary/page?page=1&limit=100&sort=&order=&dicCode=gaojian_types`,
			      method: "get"
			  }).then(({data}) => {
			      if (data && data.code === 0) {
			        this.gaojianTypesOptions = data.data.list;
			    } else {
			        this.$message.error(data.msg);
			    }
			  });
		  } else {
		      this.$message.error(data.msg);
		  }
		});
      } else {
        this.$message.error(data.msg);
      }
    });
	
                                                                                                                                          },
  methods: {
                                                                                                                                                                                                                                yonghutouxiangUploadChange(fileUrls) {
        this.ruleForm.touxiang = fileUrls;
    },
                                                                                                                                                    onUpdateHandler() {
                              if((!this.ruleForm.yonghuming)&& 'yonghu'==this.flag){
        this.$message.error('用户名不能为空');
        return
      }
                                                                  if((!this.ruleForm.mima)&& 'yonghu'==this.flag){
        this.$message.error('密码不能为空');
        return
      }
                                                                                                                                                                                                                                                            if( 'yonghu' ==this.flag && this.ruleForm.lianxidianhua&&(!isMobile(this.ruleForm.lianxidianhua))){
        this.$message.error(`联系电话应输入手机格式`);
        return
      }
                                                      if( 'yonghu' ==this.flag && this.ruleForm.money&&(!isNumber(this.ruleForm.money))){
        this.$message.error(`余额应输入数字`);
        return
      }
                                                                                                                                                                                                                        this.$http({
        url: `${this.$storage.get("sessionTable")}/update`,
        method: "post",
        data: this.ruleForm
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.$message({
            message: "修改信息成功",
            type: "success",
            duration: 1500,
            onClose: () => {
            }
          });
        } else {
          this.$message.error(data.msg);
        }
      });
    }
  }
};
</script>
<style lang="scss" scoped>
</style>
