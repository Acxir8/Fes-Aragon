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
	private int indiceFilas = 0;
	private boolean lenguajeRegistrado = false;

	// Creamos una lista simple
	String[] token = new String[15];
	public ArrayList<String> lenguaje = new ArrayList<String>();
	public ArrayList<String> documento = new ArrayList<String>();
	int[][] matriz;

	// Objetos
	Lexico app = new Lexico();

	public void leerMatriz(String nombreArchivo) {
		try {
			lector = new BufferedReader(new InputStreamReader(new FileInputStream(nombreArchivo), "utf-8"));
			linea = lector.readLine();
			token = linea.split(" ");
			int i = 0; // Se suma una columna para fin de cadena
			int[][] matriz = new int[Integer.parseInt(token[i])][Integer.parseInt(token[i + 1]) + 1];
			while ((linea = lector.readLine()) != null) {
				token = linea.split(" ");
				if (!lenguajeRegistrado) { // Registra la segunda línea del documento en el array lenguaje
					for (i = 0; i < token.length; i++) {
						lenguaje.add(token[i]);
						lenguajeRegistrado = true;
					}
				} else {// Registra el resto de lineas del documento o estados en la matriz
					for (i = 0; i < token.length; i++) {
						matriz[indiceFilas][i] = Integer.parseInt(token[i]);
					}
					indiceFilas++;
				}

			}
			lector.close();
			linea = null;
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, e);
		}
	}

	private void leerPalabras(String nombreArchivo) {
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

	public void analizarPalabras() {
		String nombreArchivo = System.getProperty("user.dir") + "\\src\\fes\\aragon\\recursos\\palabras";
		leerPalabras(nombreArchivo);
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

	public void imprimirPalabras() {
		for (int i = 0; i < documento.size() - 1; i++) {
			System.out.println(documento.get(i));
		}
	}

}
