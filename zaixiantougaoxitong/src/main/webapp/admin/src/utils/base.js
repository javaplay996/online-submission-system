const base = {
    get() {
                return {
            url : "http://localhost:8080/zaixiantougaoxitong/",
            name: "zaixiantougaoxitong",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/zaixiantougaoxitong/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "在线投稿系统"
        } 
    }
}
export default base
