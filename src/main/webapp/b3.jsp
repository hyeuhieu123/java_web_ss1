<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
<table>
    <tr>
        <th>Tên</th>
        <th>Tuổi</th>
    </tr>
    <tr>
        <td><%= request.getAttribute("userName") %></td>
        <td><%= request.getAttribute("userAge") %></td>
    </tr>
</table>
</body>
</html>