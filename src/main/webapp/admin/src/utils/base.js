const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmIxI30/",
            name: "ssmIxI30",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmIxI30/front/index.html'
        }
            },
    getProjectName(){
        return {
            projectName: "有机蔬菜销售系统"
        } 
    }
}
export default base