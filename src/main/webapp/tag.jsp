<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="pavserkTags" prefix="psk" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> just my tag </h1>
<psk:emptyTag />
<psk:paramsTag a="10" b="33"> <%= 100 * 3 %> </psk:paramsTag>
<psk:textBodyTag iterations="3">
    <tr>
        <td>text 1</td>
        <td><psk:emptyTag /></td>
        <td><%= 100 / 6 %></td>
    </tr>

</psk:textBodyTag>

<psk:expressionBodyTag>
    new - news content. goods - checks. look - in world
</psk:expressionBodyTag>

</body>
</html>
