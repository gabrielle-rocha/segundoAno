package relembrandoEstruturas;
import java.util.Scanner;
public class baseRetangulo {
	public static void main (String args[]) {
		Scanner in = new Scanner (System.in);
		int base,altura,area,perimetro;
		System.out.println("digite o valor da base do ret�ngulo");
		base = in.nextInt();
		System.out.println("digite o valo da altura do ret�ngulo");
		altura=in.nextInt();
		area = base*altura;
		System.out.println("a area do retangulo e de " +area);
		System.out.println(" ");
		perimetro= base*2 +altura*2;
		System.out.println("O perimetro do ret�ngulo � de " +perimetro);
	}
}