package fes.aragon.compilador;

public class Inicio {

	public static void main(String[] args) {
		Lexico app = new Lexico();
		app.setToken("Mike ");
		try {
			int verifica = app.inicio();
			if (verifica == 1) {
				System.out.println("Cadena valida");
			}else {
				System.out.println("Cadena invalida");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
	}

}