/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.File;
import java.util.ArrayList;

/**
 *
 * @author User
 */
public class Utilidades {
    public static ArrayList<String> getArchivos(String ruta){
        ArrayList<String> imagenes=new ArrayList<String>();
        File dir = new File(ruta);
        String[] ficheros = dir.list();
        String f="";
        if (ficheros == null)
            System.out.println("No hay ficheros en el directorio especificado");
          else { 
            for (int x=0;x<ficheros.length;x++)
                if(ficheros[x].endsWith(".jpg") || ficheros[x].endsWith(".gif")){
                    f="ficheros".concat(File.separator).concat(ficheros[x]);
                    imagenes.add(f);
                }     
          }
        return imagenes;
    }
}
