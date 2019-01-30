package it.unical.ingsw.justeat.db.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.unical.ingsw.justeat.db.dao.RistoranteDao;
import it.unical.ingsw.justeat.db.dao.TitolareDao;
import it.unical.ingsw.justeat.db.dao.UtenteDao;
import it.unical.ingsw.justeat.db.factory.DAOFactory;
import it.unical.ingsw.justeat.db.model.Categoria;
import it.unical.ingsw.justeat.db.model.Ristorante;
import it.unical.ingsw.justeat.db.model.Titolare;
import it.unical.ingsw.justeat.db.model.Utente;

public class registrazioneRistorante extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome=req.getParameter("nome");
		String password=req.getParameter("password");
		String nome_attivita=req.getParameter("nome_attivita");
		String email=req.getParameter("email");
		String telefono=req.getParameter("telefono");
		int numero=Integer.parseInt(telefono);
		String indirizzo_attivita=req.getParameter("indirizzo");
		String partita_iva=req.getParameter("iva");
		String nome_titolare=req.getParameter("nome_titolare");
		String cognome_titolare=req.getParameter("cognome_titolare");
		String CF=req.getParameter("cf");
		String data_di_nascita=req.getParameter("data_nascita");
		Date data=Date.valueOf(data_di_nascita);
		String residenza=req.getParameter("residenza");
		String iban=req.getParameter("iban");
		
		DAOFactory factory=DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		RistoranteDao rd=factory.getRistoranteDAO();
		TitolareDao td=factory.getTitolareDAO();
		UtenteDao ud=factory.getUtenteDAO();
		
		Titolare t=new Titolare();
		t.setCf_Titolare(CF);
		t.setCognome_Titolare(cognome_titolare);
		t.setData_Nascita_Titolare(data);
		t.setIndirizzo_Titolare(residenza);
		t.setNome_Titolare(nome_titolare);
		
		td.save(t);
		
		Ristorante r=new Ristorante();
		Categoria c=new Categoria();
		c.setId_Categoria(1);
		c.setNome_Categoria("default");
		r.addCategoria(c);
		r.setCoordinate_Bancarie_Ristorante(iban);
		r.setIndirizzo_Legale(residenza);
		r.setIndirizzo_Ristorante(indirizzo_attivita);
		r.setNome_Ristorante(nome_attivita);
		r.setPartita_Iva(partita_iva);
		r.setTitolare(t);
		
		Utente u=new Utente();
		u.setNome_Utente(nome);
		u.setEmail_Utente(email);
		u.setNumero_telefono_utente(numero);
		u.setPassword(password);
		u.setIndirizzo_Utente(indirizzo_attivita);
		u.setCognome_Utente(cognome_titolare);
		
		
		ud.save(u);
		r.setUtente_Proprietario(u);
		rd.save(r);
		
		RequestDispatcher rdi = req.getRequestDispatcher("login.html");
		rdi.forward(req, resp);
		
	}

}
