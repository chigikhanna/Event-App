<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of users</title>
</head>
<script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous">
</script>
<body>
<h1>List of Users</h1>

<script>
    var flag = 0;
    document.write("<table border='1px' cellpadding='2px' colspan='2'>");
    $.each(${events}, function(index, value){
        document.write("<tr>");
        if(flag == 0)
        {
            $.each(value, function(i, o){
                document.write("<th>" + i + "</th>");
            })
        }
        flag = 1;
        document.write("</tr>");
        document.write("<tr>");
        $.each(value, function(i, o){
            document.write("<td>" + o + "</td>");
        })
        document.write("</tr>");
    });
    document.write("</table>");
</script>

<p><a href="${pageContext.request.contextPath}/event/home">Home page</a></p>
</body>
</html>
