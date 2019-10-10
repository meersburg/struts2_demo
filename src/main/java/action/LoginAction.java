package action;

import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

public class LoginAction {
    public String success(){
        System.out.println("成功访问action，请求正在处理中");
        System.out.println("调用service");
        return "success";
    }
    public String login() {
        try {
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpServletResponse response = ServletActionContext.getResponse();
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html;charset=utf-8");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            System.out.println("name->" + username + ",password->" + password);
            return "admin".equals(username) && "123456".equals(password) ? "success" : "login";
        } catch (UnsupportedEncodingException var5) {
            var5.printStackTrace();
            return "error";
        }
    }
}

