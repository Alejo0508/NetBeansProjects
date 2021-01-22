/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package vehiculoBeans;



public class vehiculo implements java.io.Serializable {     // el serializable convierte en bits la informacion apra que sea mas facil de manipular
   
   
   // se sugiere que los atributos esten privados
   private String nroplaca;
   private String marca;
   private String modelo;
   
   
   public vehiculo()
   {  
   }
   
   
   public String getNroplaca() {
      return nroplaca;
   }

   public void setNroplaca(String nroplaca) {
      this.nroplaca = nroplaca;
   }

   public String getMarca() {
      return marca;
   }

   public void setMarca(String marca) {
      this.marca = marca;
   }

   public String getModelo() {
      return modelo;
   }

   public void setModelo(String modelo) {
      this.modelo = modelo;
   }

   
   

}
