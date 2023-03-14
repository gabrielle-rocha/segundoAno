package relembrandoEstruturas;
import java.util.Scanner;
public class salarioProfessor {
	public static void main (String args[]) {
		Scanner in = new Scanner (System.in);
		double hraula,aulaDada, salario,desconto;
		System.out.println("Digite o valor hora aula: ");
		hraula = in.nextDouble();
		System.out.println("Digite o número de aulas dadas: ");
		aulaDada =  in.nextDouble();
		salario = aulaDada*hraula;
		if (salario<=1212) {
			desconto = (salario * 7.5/100);
			System.out.println("o seu salario é de "+desconto );
		} 	else if (salario <=2427.35){
				desconto =(salario*9/100);
				System.out.println("o seu salario é de "+desconto);
		}	else if (salario <=2427.35){
			desconto =(salario*9/100);
			System.out.println("o seu salario é de "+desconto);
		}	else if (salario <=2427.35){
			desconto =(salario*9/100);
			System.out.println("o seu salario é de "+desconto);
		}	else if (salario <=2427.35){
			desconto =(salario*9/100);
			System.out.println("o seu salario é de "+desconto);
		}	else if (salario <=2427.35){
			desconto =(salario*9/100);
			System.out.println("o seu salario é de "+desconto);
		}	else if (salario <=2427.35){
			desconto =(salario*9/100);
			System.out.println("o seu salario é de "+desconto);
		}	else if (salario <=2427.35){
	desconto =(salario*9/100);
	System.out.println("o seu salario é de "+desconto);
}
	}		
}
