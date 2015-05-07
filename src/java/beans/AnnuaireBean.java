package beans;
import java.beans.*;
import java.io.Serializable;
import java.util.Enumeration;
import java.util.Hashtable;
public class AnnuaireBean implements Serializable {
 
 private Hashtable liste = new Hashtable();
 private PropertyChangeSupport propertySupport;
 public AnnuaireBean() {
 propertySupport = new PropertyChangeSupport(this);
 }
 
 public void addDVD(String nom, String genre, String annee,double prix,int quantite){
 DVDBean tmp = new DVDBean();
 tmp.setNom(nom);
 tmp.setGenre(genre);
 tmp.setAnnee(annee);
 tmp.setPrix(prix);
 tmp.setQuantite(quantite);
 liste.put(nom,tmp);
 }
 
 public DVDBean findDVD(String nom){
 return (DVDBean) liste.get(nom);
 }
 
 public Enumeration liste_DVD(){
     Enumeration names;
     return names = liste.elements(); 
 }
         
 public void removeItem(String nom) {
    if (liste.containsKey(nom)) {
      liste.remove(nom);
    }
 }
         
 public void addPropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.addPropertyChangeListener(listener);
 }
 public void removePropertyChangeListener(PropertyChangeListener listener) {
 propertySupport.removePropertyChangeListener(listener);
 }
}
