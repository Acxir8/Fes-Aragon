package fes.aragon.herramientas;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import fes.aragon.compilador.Lexico;

public class Archivos {

	// Variables para la lectura y escritura
	private BufferedReader lector;
	private String linea;
	private int indice = 0;

	// Creamos una lista simple
	String[] palabras = new String[15];
	public ArrayList<String> documento = new ArrayList<String>();

	// Objetos
	Lexico app = new Lexico();

	private void leerArchivo(String nombreArchivo) {
		try {
			lector = new BufferedReader(new InputStreamReader(new FileInputStream(nombreArchivo), "utf-8"));
			while ((linea = lector.readLine()) != null) {
				// Lectura de palabras individuales en una linea
//				palabras = linea.split(" ");
//				for (int i = 0; i < palabras.length; i++) {
//					documento.add(palabras[i]);
				documento.add(linea);
//				}
			}
			lector.close();
			linea = null;
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, e);
		}
	}

	public void imprimirArchivo() {
		for (int i = 0; i < documento.size() - 1; i++) {
			System.out.println(documento.get(i));
		}
	}

	public void analizarPalabras() {
		String nombreArchivo = System.getProperty("user.dir") + "\\src\\fes\\aragon\\recursos\\palabras";
		leerArchivo(nombreArchivo);
		while (indice <= documento.size() - 1) {
			app.setToken(documento.get(indice));
			try {
				int verifica = app.inicio();
				if (verifica == 1) {
					System.out.println("Cadena valida");
				} else {
					System.out.println("Cadena invalida");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println(e);
			}
			indice++;
		}
	}

}
