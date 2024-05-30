<%-- 
    Document   : liste-contact
    Created on : 28 mai 2024, 11:35:08
    Author     : saran.soumbounou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kalanso.Contact" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Contact</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <section id="heading">
        <div class="container heading-grid">
            <div class="heading-wrap">
                <h2>Bienvenue, Admin</h2>
            </div>
        </div>
    </section>

    <section id="form-box" class="animated jackInTheBox">
        <div class="container">
            <div class="form-box">
                <div class="form-input">
                    <h2>Liste des Contacts</h2>
                    <div class="table-wrapper">
                        <table border="1">
                            <tr>
                                <th>ID</th>
                                <th>Nom</th>
                                <th>Prénom</th>
                                <th>Email</th>
                                <th>Numéro de téléphone</th>
                                <th>Compétence favorite</th>
                                <th>Action</th>
                            </tr>
                            <%
                                List<Contact> listContact = (List<Contact>) request.getAttribute("listContact");
                                for (Contact contact : listContact) {
                            %>
                            <tr>
                                <td data-label="ID"><%= contact.getId() %></td>
                                <td data-label="Nom"><%= contact.getNom() %></td>
                                <td data-label="Prénom"><%= contact.getPrenom() %></td>
                                <td data-label="Email"><%= contact.getEmail() %></td>
                                <td data-label="Numéro de téléphone"><%= contact.getTelephone() %></td>
                                <td data-label="Compétence favorite"><%= contact.getCompetence() %></td>
                                <td data-label="Action">
                                    <a href="contact?action=DELETE&id=<%= contact.getId() %>">Supprimer</a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </div>
                    <button  >
                        <a href="add-contact.jsp">Ajouter un nouveau contact</a>
                    </button>
                </div>
            </div>
        </div>
    </section>
</body>
</html>