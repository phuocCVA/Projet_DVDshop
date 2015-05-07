package beans;
import java.beans.*;
import java.io.Serializable;
import java.util.Enumeration;
import java.util.Hashtable;

public class PanierBean implements Serializable {    
    private double totalPrice;
    private Hashtable panier = new Hashtable();
    private PropertyChangeSupport propertySupport;
    public PanierBean() {
        propertySupport = new PropertyChangeSupport(this);
    }
 
 public void clearPanier() {
    panier.clear();
 }  

public Hashtable getPanier() {
        return panier;
    }
 
 public void addPanier(String nom, String genre, String annee,double prix,int quantite){
    DVDBean tmp = new DVDBean();
    Enumeration elements=panier.elements();
    boolean flag=false;
    tmp.setNom(nom);
    tmp.setGenre(genre);
    tmp.setAnnee(annee);
    tmp.setPrix(prix);
    tmp.setQuantite(quantite);
    if (elements.hasMoreElements()) {
        while(elements.hasMoreElements()) { 
              DVDBean p = (DVDBean)elements.nextElement();                 
              if (p.getNom().equals(nom)) { 
                 tmp.setQuantite(quantite+p.getQuantite());
                 removePanier(nom);
                 panier.put(nom,tmp);
                 flag=true;
                 break;
              }
        }
    }
    else panier.put(nom,tmp); 
    if( (!elements.hasMoreElements())&&(flag==false) ) panier.put(nom,tmp); 
 }
 
 public Enumeration showPanier(){
     Enumeration element;
     return element = panier.elements(); 
 }
         
 public void removePanier(String nom) {
    if (panier.containsKey(nom)) {
      panier.remove(nom);
    }
 }
 
 public double TotalPrice(){
     totalPrice=0;
     Enumeration elements=panier.elements();
     while(elements.hasMoreElements()) { 
              DVDBean p = (DVDBean)elements.nextElement();  
              totalPrice=totalPrice+ ( p.getPrix()*p.getQuantite());      
     }
     return totalPrice;
 }
 
 public void addPropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.addPropertyChangeListener(listener);
 }
 public void removePropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.removePropertyChangeListener(listener);
 }
}
