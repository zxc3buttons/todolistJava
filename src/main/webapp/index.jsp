<%@ page import="com.example.todolistJava.DB" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>TODO list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>
    <h1 class="display-1 text-center">Your Plan</h1><br/>
    <h3 class="display-3 text-danger text-center">${error}</h3>
        <form method="post" action="/">
            <div class="container mx-auto " style="width: 500px;">
                <div class="row ">
                    <div class="col">
                        <input style="width: 500px;" class="mx-auto form-control" id="your-todo" type="text" name="your_todo" placeholder="TODO">
                    </div>
                </div>
                <div class="row row-cols-2 ">
                    <div class="col mx-auto">
                        <button style="width: 250px;" class="mx-auto btn btn-outline-dark " type="submit" name="todoBtn" value="add-todo">Add TODO</button>
                    </div>
                    <div class="col mx-auto">
                        <button style="width: 250px;" class="mx-auto btn btn-outline-dark" type="submit" name="todoBtn" value="delete-todo">Delete done</button>
                    </div>
                </div>
            </div>
        <ul class="list-group">
        <%
            for (int i = 0; i < DB.getSize(); i++) {
                if(DB.getTODO(i) != null){%>
                    <li class="list-group-item">
                    <input class="form-check-input me-1" type="checkbox" name="someTODO<%=i%>">
                    <%=DB.getTODO(i)%>
                    </li>
                <%}%>
        <%}%>
        </ul>
    </form>
</body>
</html>