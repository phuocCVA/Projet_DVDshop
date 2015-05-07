package beans;
import java.beans.*;
import java.io.Serializable;
import java.util.Enumeration;
import java.util.Hashtable;

public class CommandeBean implements Serializable {
    
    private Hashtable commande = new Hashtable();
    private PropertyChangeSupport propertySupport;
    public CommandeBean() {
    propertySupport = new PropertyChangeSupport(this);
 }
 
 public void addCommande(String nom, String prenom, String adress,String telephone,String email,Hashtable panier){
 Commande tmp = new Commande();
 tmp.setPanier(panier);
 tmp.setNom(nom);
 tmp.setPrenom(prenom);
 tmp.setAdresse(adress);
 tmp.setTelephone(telephone);
 tmp.setEmail(email);
 commande.put(nom,tmp);
 }
 
 public Commande findCommande(String nom){
 return (Commande) commande.get(nom);
 }
 
 public Enumeration liste_Commande(){
     Enumeration names;
     return names = commande.elements(); 
 }
         
 public void removeCommande(String nom) {
    if (commande.containsKey(nom)) {
      commande.remove(nom);
    }
 }
         
 public void addPropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.addPropertyChangeListener(listener);
 }
 public void removePropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.removePropertyChangeListener(listener);
 }
}
