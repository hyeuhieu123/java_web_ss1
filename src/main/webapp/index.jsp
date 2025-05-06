<%@ page import="com.data.java_web_ss1.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1>ss1</h1>
<a hreaf="b1"> b1</a>
<br>
<img src="b1.png">
<h2>1. Các thành phần chính</h2>
<table border="1">
  <tr>
    <th>Thành phần</th>
    <th>Chức năng</th>
  </tr>
  <tr>
    <td>Client</td>
    <td>Thiết bị hoặc trình duyệt người dùng dùng để gửi yêu cầu và nhận kết quả từ hệ thống.</td>
  </tr>
  <tr>
    <td>Web Server</td>
    <td>Tiếp nhận yêu cầu HTTP từ Client, phản hồi tài nguyên tĩnh (HTML, CSS, JS) hoặc chuyển tiếp yêu cầu đến Application Server.</td>
  </tr>
  <tr>
    <td>Application Server</td>
    <td>Xử lý logic nghiệp vụ, truy vấn dữ liệu, và tạo nội dung động (thường qua JSP, Servlet, PHP, v.v.).</td>
  </tr>
  <tr>
    <td>Database</td>
    <td>Lưu trữ và quản lý dữ liệu ứng dụng (người dùng, sản phẩm, đơn hàng, v.v.). Được truy vấn bởi Application Server.</td>
  </tr>
</table>

<div>
  <h2>2. Mối quan hệ và tương tác giữa các thành phần</h2>
  <p>
    Trong một hệ thống web điển hình, khi người dùng (Client) gửi yêu cầu qua trình duyệt (ví dụ: truy cập trang web), yêu cầu đó sẽ được gửi đến Web Server (ví dụ: Apache hoặc Nginx).
    Nếu đó là tài nguyên tĩnh như ảnh, HTML, CSS, Web Server sẽ phản hồi trực tiếp.
    Nếu yêu cầu cần xử lý logic nghiệp vụ, Web Server sẽ chuyển tiếp yêu cầu đến Application Server (ví dụ: Tomcat, Spring Boot),
    nơi xử lý mã nguồn như Servlet, JSP hoặc Controller.
  </p>
  <p>
    Trong quá trình xử lý, Application Server có thể gửi truy vấn đến Database (ví dụ: MySQL, PostgreSQL) để lấy hoặc lưu dữ liệu.
    Sau khi xử lý xong, kết quả được gửi lại từ Application Server → Web Server → Client để hiển thị cho người dùng.
  </p>
</div>

<br/>

<a href="">b2</a><br>
<table border="1">
  <tr>
    <th>Thư mục</th>
    <th>Vai trò</th>
  </tr>
  <tr>
    <td>src/main/java</td>
    <td>Chứa toàn bộ mã nguồn Java. Đây là nơi bạn viết các lớp controller, model, service, servlet,...</td>
  </tr>
  <tr>
    <td>src/main/resources</td>
    <td>Chứa các file cấu hình như <code>application.properties</code>, file cấu trúc SQL, file messages quốc tế hóa,...</td>
  </tr>
  <tr>
    <td>src/main/webapp</td>
    <td>Chứa tài nguyên web, bao gồm HTML, JSP, CSS, JS. Đây là thư mục gốc được deploy lên server.</td>
  </tr>
</table>
<br>
<a href="b3">b3</a>
<br>
<t href="b4">b4</t>
<p>tạo file servlet và Cung cấp mã nguồn cho Servlet và JSP chọn Tomcat và run </p>
<br>
<a href="b5">b5</a>
<br>
<t>b6</t>
<form action="RegisterTickt" method="post">
  <label for="fullName">Họ và Tên:</label>
  <input type="text" id="fullName" name="fullName" required><br><br>

  <label for="class">Lớp:</label>
  <input type="text" id="class" name="class" required><br><br>

  <label for="vehicleType">Loại Xe:</label>
  <input type="text" id="vehicleType" name="vehicleType" required><br><br>

  <label for="licensePlate">Biển Số Xe:</label>
  <input type="text" id="licensePlate" name="licensePlate" required><br><br>

  <button type="submit">Submit</button>
</form>
<t>b7</t>
<h1>Student List</h1>
<table>
  <tr>
    <th>Họ và Tên</th>
    <th>Lớp</th>
    <th>Loại Xe</th>
    <th>Biển Số Xe</th>
  </tr>
  <%
    List<Student> students = (List<Student>) request.getAttribute("students");
    if (students != null) {
      for (Student student : students) {
  %>
  <tr>
    <td><%= student.getName() %></td>
    <td><%= student.getClassName() %></td>
    <td><%= student.getVehicleType() %></td>
    <td><%= student.getLicensePlate() %></td>
  </tr>
  <%
      }
    }
  %>
</table>
</body>
</html>