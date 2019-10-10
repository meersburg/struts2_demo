package action;

public class LoginAction {
    public String success(){
        System.out.println("成功访问action，请求正在处理中");
        System.out.println("调用service");
        return "success";
    }
}

