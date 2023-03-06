extends Node2D
var teste = false
var valor = 0
#var número = 0 -> não funcionou porque o godot não reconhece acentos nas váriaveis
var numero = 0
#lista = [] -> é nescessário escrever var antes da lista, para cria-la
var lista = []
var nome
var cont = 0
var i = 0
func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #variavel nao declarada
	nome = str($LineEdit2.text) #variavel nao declarada
	
func _on_Button2_pressed(): 
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i# variavel nao declarada
		lista.append(numero)
	$Label.text = str(numero) #tipo de dado estava errada

func _on_Button3_pressed(): 
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	while i<len(lista):
		if(lista[i]%2==1):
			cont+=1 # variavel cont nao declarada
		i += 1 
	if(cont!=0): 
		nome = nome + "baldo"
		$Label2.text = str(nome)
