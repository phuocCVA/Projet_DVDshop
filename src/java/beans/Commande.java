package beans;
import java.beans.*;
import java.io.Serializable;
import java.util.Hashtable;
public class Commande implements Serializable {
 
    private Hashtable panier;
    private String nom;
    private String prenom;
    private String adresse;
    private String telephone;
    private String email;
 
 private PropertyChangeSupport propertySupport;
 public Commande() {
 propertySupport = new PropertyChangeSupport(this);
 }

    public Hashtable getPanier() {
        return panier;
    }

    public void setPanier(Hashtable panier) {
        this.panier = panier;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
 
 
 public void addPropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.addPropertyChangeListener(listener);
 }
 public void removePropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.removePropertyChangeListener(listener);
 }
}