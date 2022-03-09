<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html>
<style>
    .container {
        display: block;
        margin: 0 auto;
        padding: 0 50px;
        max-width: 1000px;
        width: 100%;
    }
    .container:after {
        content: '';
        clear: both;
    }
    h2 {
        font-size: 40px;
        text-align: center;
    }
    table {
        margin: 50px auto 0;
        width: 100%;
    }
    table th {
        padding: 10px 20px;
        font-size: 30px;
    }
    table td {
        padding: 10px 20px;
        font-size: 20px;
    }
    table tr {
        padding: 10px;
    }
    table tbody {
        text-align: center;
    }
    table tbody tr:nth-child(odd){
        background-color: beige;
    }
    .btn-update {
        background-color: #59f027;
    }
    .btn-delete {
        background-color: #ee4e5d;
    }
    .btn-add {
        margin-top: 50px;
        border-radius: 25px;
        color: #fff;
        border: transparent;
        padding: 5px 10px;
        cursor: pointer;
        font-size: 20px;
        background-color: #33a0d4;
        display: inline-block;
        padding: 10px 50px;
        float: right;
    }
    .btn {
        border-radius: 25px;
        color: #fff;
        border: transparent;
        padding: 5px 10px;
        cursor: pointer;
        font-size: 14px;
    }
</style>
<body>
<div class="container">


    <h2>All Employees</h2>

    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="emp" items="${allEmps}">

            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>


            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td><input class="btn btn-update" type="button" value="Update" onclick="window.location.href = '${updateButton}'">
                    <input class="btn btn-delete" type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"></td>
            </tr>

        </c:forEach>
    </table>

    <input class="btn-add" type="button" value="add" onclick="window.location.href ='addNewEmployee'"/>
</div>
</body>


</html>