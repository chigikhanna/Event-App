<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Form submitted</title>
</head>
<body>
<form method="post" action="upload" enctype="multipart/form-data">
    Select file to upload:
    <input type="file" name="dataFile" id="fileChooser"/><br/><br/>
    <input type="submit" value="Upload" />
</form>

</body>
</html>
