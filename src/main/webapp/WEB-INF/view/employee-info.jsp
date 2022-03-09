<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<style>
    .container {
        display: block;
        margin: 0 auto;
        padding: 0 50px;
        max-width: 1000px;
        width: 100%;
    }
    h2 {
        font-size: 40px;
        text-align: center;
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
    }
    .flex {
        display: flex;
        align-items: center;
        align-items: center;
    }
    .flex p {
        font-size: 20px;
        min-width: 150px;
        color: gray;
    }
    .flex input {
        height: 30px;
        border-radius: 15px;
        padding: 5px 10px;
        color: #000;
    }
</style>
<body>
<div class="container">
    <h2>Employee Info</h2>
    <br>

    <form:form action="saveEmployee" modelAttribute="employee">

        <form:hidden path="id"/>
       <div class="flex">
           <p>Name</p>
           <form:input path="name"/>
       </div>
        <div  class="flex">
            <p>Surname</p>
            <form:input path="surname"/>
        </div>
        <div  class="flex">
            <p>Department</p>
            <form:input path="department"/>
        </div>
        <div  class="flex">
            <p>Salary</p>
            <form:input path="salary"/>
        </div>
        <input class="btn-add" type="submit" value="OK">
    </form:form>
</div>


</body>

</html>