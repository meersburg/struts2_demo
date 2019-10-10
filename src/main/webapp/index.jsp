<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
    <body>
<h2>index:Hello World!</h2>
<s:form name="form" theme="simple" method="POST">
    <s:submit type="button" value="add" onclick="computeMethod('login')"/>
</s:form>
<script type="text/javascript">
        function computeMethod(op)
        {
        document.form.action=op;
        document.form.submit();
        }
</script>

<form action="enter" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username" /> </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="text" name="password" /> </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="登录" />
                <input type="reset" value="重置" /></td>
        </tr>
    </table>
</form>

<a href="login">test</a>

<a href="#" onclick="location.href='/login'">test1</a>

</body>
</html>
