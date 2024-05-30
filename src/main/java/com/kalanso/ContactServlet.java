package  com.kalanso;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {

    private ContactDAO contactDAO;

    public void init() {
        contactDAO = new ContactDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("ADD".equalsIgnoreCase(action)) {
            saveContact(request, response);
        } else {
            doGet(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("DELETE".equalsIgnoreCase(action)) {
            deleteContact(request, response);
        } else {
            listContacts(request, response);
        }
    }

    private void saveContact(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String telephone = request.getParameter("telephone");
        String competence = request.getParameter("competence");

        Contact contact = new Contact(0, nom, prenom, email, telephone, competence);
        contactDAO.saveContact(contact);
        response.sendRedirect("contact?action=LIST");
    }

    private void listContacts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Contact> contacts = contactDAO.getAllContacts();
        request.setAttribute("listContact", contacts);
        request.getRequestDispatcher("liste-contact.jsp").forward(request, response);
    }

    private void deleteContact(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        contactDAO.deleteContact(id);
        response.sendRedirect("contact?action=LIST");
    }
}
