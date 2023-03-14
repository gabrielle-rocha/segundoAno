package relembrandoEstruturas;
import java.util.Scanner;
public class vetorAeB {
	public static void main (String args[]) {
		Scanner in = new Scanner (System.in);
		int i=1,a[],b[],c[];
		a = new int [10];
		b = new int [10];
		c = new int [10];
		for(i=0;i<10;i++) {
			System.out.println("digite o valor de A");
			a[i]= in.nextInt();
		}for(i=0;i<10;i++) {
			System.out.println("digite o valore de B");
			b[i]=in.nextInt();
		}for(i=0;i<10;i++) {
			c[i]= a[i]+b[i];
		}
		System.out.print("valores de c [");
		for(i=0;i<10;i++) {
			System.out.print(c[i]+" ");
		}
		System.out.println("]");
	}
}