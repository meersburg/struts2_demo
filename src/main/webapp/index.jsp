<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <body>
<h2>index:Hello World!</h2>
<s:form name="form" theme="simple">
    <s:submit type="button" value="add" onclick="computeMethod('login')"/>
</s:form>
<script type="text/javascript">
        function computeMethod(op)
        {
        document.form.action=op;
        document.form.submit();
        }
</script>
</body>
</html>
