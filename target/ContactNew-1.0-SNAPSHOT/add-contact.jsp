<%-- 
    Document   : add-contact
    Created on : 28 mai 2024, 11:34:20
    Author     : saran.soumbounou
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <button class="glow" style="color: white; background-color: #2CC4ED; border-radius: 10px; width: 20%; padding: 10px; margin: 5px;" type="button">
    <a href="/ContactNew" >Retour a l'accueil</a>
</button>

            </div>
        </div>
    </section>

    <section id="form-box" class="animated jackInTheBox">
        <div class="container">
            <div class="form-box">
                <div class="form-input">
      <button type="button" style="color: white; background-color: #2CC4ED; border-radius: 10px; width: 20%; padding: 10px; margin: 5px;">
    <a href="contact?action=LIST" >Voir liste contact</a>
</button>

                   
                    <h3>Veuillez remplir le formulaire ci-dessous</h3>
                    <form method="post" action="contact?action=ADD">
                        <p>
                            <label for="nom">Nom</label>
                            <input type="text" name="nom" placeholder="nom..." required>
                        </p>
                        <p>
                            <label for="prenom">Prénom</label>
                            <input type="text" name="prenom" placeholder="prénom..." required>
                        </p>
                        <p>
                            <label for="telephone">Numéro de téléphone</label>
                            <input type="tel" name="telephone" placeholder="numéro de téléphone..." required>
                        </p>
                        <p>
                            <label for="competence">Compétence favorite</label>
                            <input type="text" name="competence" placeholder="compétence favorite..." required>
                        </p>
                        <p class="full">
                            <label for="email">Email</label>
                            <input type="email" name="email" placeholder="email..." required>
                        </p>
                        <p class="full">
                            <button type="submit">Sauvegarder</button>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
