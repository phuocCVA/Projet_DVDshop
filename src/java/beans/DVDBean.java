package beans;
import java.beans.*;
import java.io.Serializable;
public class DVDBean implements Serializable {
 
 private String nom;
 private String genre;
 private String annee;
 private double prix;
 private int quantite;
 
 private PropertyChangeSupport propertySupport;
 public DVDBean() {
 propertySupport = new PropertyChangeSupport(this);
 }
 public String getNom() {
 return nom;
 }
 public void setNom(String nom) {
 this.nom = nom;
 }
 public String getGenre() {
 return genre;
 }
 
 public void setGenre(String genre) {
 this.genre = genre;
 }

 public String getAnnee() {
        return annee;
    }

 public void setAnnee(String annee) {
        this.annee = annee;
    }

 public int getQuantite() {
        return quantite;
    }

public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

public double getPrix() {
        return prix;
    }

public void setPrix(double prix) {
        this.prix = prix;
    }
 

 
 public void addPropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.addPropertyChangeListener(listener);
 }
 public void removePropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.removePropertyChangeListener(listener);
 }
}