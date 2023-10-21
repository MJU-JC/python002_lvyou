const base = {
    get() {
        return {
            url : "http://localhost:8080/djangow3d21/",
            name: "djangow3d21",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "旅游门户系统的设计与实现"
        } 
    }
}
export default base
