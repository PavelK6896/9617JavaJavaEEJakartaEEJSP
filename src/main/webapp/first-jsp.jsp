<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.List" %>
<%@ page import="pavserk.User" %>

<!doctype html>
<html>
<head>
    <title>First JSP</title></head>
<body>
<h1>One Teg = Hello JSP</h1>
<p>next the body of one method in Java:</p>
<%
    response.getWriter().write("Me F message! scriptlet");
    out.println("scriptlet!");
    out.println("scriptlet!2");
%>
<br/>
<%= LocalDateTime.now() + " mustache timeline " %>
<br/>
<% out.print(String.valueOf(" This is second = " + LocalDateTime.now().getSecond()) + " no this is~!"); %>
<br/>
<%=request.getRequestURI()%>
<br/>
<hr/>
<%
    List<User> users = (List) request.getAttribute("users");
    User anUser = users.get(1);
    out.print(users.size() + " the jsp page itself cannot request data ");
%>
<p> conclusion: </p>
<i><%=   (users.get(0).getName())%>
</i>
<b><%=   (anUser.getName())%>
</b>
<u><%=  (anUser.getCountry())%>
</u>
<br/>
<hr/>
<table>
    <% for (User user : users) {%>
    <tr>
        <td><%= user.getName() %>
        </td>
        <td>
            <% if (user.getCountry().equals("Nepal")) { %>
            <b style="font-size: 2rem"><%= user.getCountry() %>
            </b>
            <% } else { %>
            <%= user.getCountry() %>
            <%}%>
        </td>
        <td><%= user.getAge() %>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>