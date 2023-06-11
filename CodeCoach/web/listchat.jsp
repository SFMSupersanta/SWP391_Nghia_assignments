<%@page import="model.Users"%>
<%@page import="java.util.List"%>
<%@page import="model.ChatRoom"%>
<%@page import="model.ChatMessages"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Mentoring</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">

    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body class="chat-page">
    <%@include file="header.jsp" %>
    <div class="main-wrapper">
        <div class="content">
            <div class="container-fluid">
                <div class="settings-back mb-3">
                    <a href="home">
                        <i class="fas fa-long-arrow-alt-left"></i> <span>Back</span>
                    </a>
                </div>
                <div class="row">
                    <div class="col-sm-12 mb-4">
                        <div class="chat-window">
                            <div class="chat-cont-left">
                                <div class="chat-header">
                                    <span>Chat</span>
                                </div>
                                <div class="chat-users-list">
                                    <div class="chat-scroll">
                                        <% List<ChatRoom> chatRooms = (List<ChatRoom>) request.getAttribute("chatRooms"); %> 
                                        <ul class="list-group">
                                            <% for (ChatRoom chatRoom : chatRooms) {%>
                                            <li class="list-group-item">
                                                <a href="listchat?chatRoomId=<%= chatRoom.getChatRoomId()%>"><%= chatRoom.getChatRoomName()%></a>
                                            </li>
                                            <% } %>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="chat-cont-right">
                                <% String selectedChatRoomId = (String) request.getAttribute("selectedChatRoomId"); %>
                                <% List<ChatMessages> listChatMessages = (List<ChatMessages>) request.getAttribute("listChatMessages"); %>
                                <% List<ChatRoom> listChatRooms = (List<ChatRoom>) request.getAttribute("listChatRooms"); %>
                                <% List<Users> listUsers = (List<Users>) request.getAttribute("listUsers"); %>
                                <% if (selectedChatRoomId != null) { %>
                                <h2><%
                                    for (ChatRoom chatroom : listChatRooms) {
                                        if (chatroom.getChatRoomId() == Integer.parseInt(selectedChatRoomId)) {
                                            out.print(chatroom.getChatRoomName());
                                        }
                                    }
                                    %></h2>
                                    <hr>    
                                <div class="chat-messages">
                                    <% for (ChatMessages chatMessage : listChatMessages) {%>
                                    <div class="message">
                                        <p><strong><%
                                            for (Users user : listUsers) {
                                                if (user.getUserId()== chatMessage.getUserId()) {
                                                    out.print(user.getlName());
                                                }
                                            }  
                                        %></strong> - <%= chatMessage.getSentDateTime()%></p>
                                        <p><%= chatMessage.getMessage()%></p>
                                    </div>
                                    <% }%>
                                </div>
                                <form action="listchat" method="post" class="chat-form">
                                    <div class="input-group mb-3">
                                        <input type="text" name="message" class="form-control" placeholder="Type your message" required>
                                        <div class="input-group-append">
                                            <input type="hidden" name="chatRoomId" value="<%= selectedChatRoomId%>">
                                            <button type="submit" class="btn btn-primary">Send</button>
                                        </div>
                                    </div>
                                </form>
                                <% }%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/script.js"></script>
    <%@include file="footer.jsp" %>
</body>
</html>
