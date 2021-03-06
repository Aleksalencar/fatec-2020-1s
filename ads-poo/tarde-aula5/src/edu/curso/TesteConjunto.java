package edu.curso;

import static java.util.stream.Collectors.toList;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class TesteConjunto {
	class Aluno implements Comparable<Aluno> {
		public String ra;
		public String nome;
		public Aluno(String r, String n) { 
			ra = r;
			nome = n;
		}
		@Override
		public int hashCode() {
			return ra.hashCode();
		}
		@Override
		public int compareTo(Aluno o) {
			return this.nome.compareTo(o.nome);
		}		
	}
	
	
	
	public TesteConjunto() {
		Aluno a1 = new Aluno("111", "Antonio");
		Aluno a2 = new Aluno("222", "Pedro");
		Aluno a3 = new Aluno("333", "Maria");	
		Aluno a4 = new Aluno("111", "Antonio");
		Set<Aluno> alunos = new TreeSet<>();
		alunos.add(a1);
		alunos.add(a2);
		alunos.add(a2);
		alunos.add(a3);
		alunos.add(a4);
		List<Aluno> alunosMaiusc = alunos.stream().map((e) -> {
			e.nome = e.nome.toUpperCase();
			return e;} ).collect(toList());	
		alunos.remove(a2);
		System.out.println("Contem aluno 2 " + alunos.contains(a2));
		print(alunosMaiusc);
	}
	
	public void print(Collection<Aluno> alunos) { 
		for (Aluno a : alunos) { 
			System.out.println(a.ra + " - " + a.nome);
		}
	}
	
	public static void main(String[] args) {
		new TesteConjunto();
	}
}
