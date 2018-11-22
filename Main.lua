local pessoa = require "Pessoa"

repeat
	print("Menu")
	print("1) Adicionar")
	print("2) Visualizar")
	print("3) Excluir")
	print("4) Alterar")

	local op = io.read()

	if op == "1" then
		Pessoa.cadastrar()
	end

	if op == "2" then
		Pessoa.listar()
	end

	if op == "3" then
		print("Digite o id...")
		local id = io.read()
		Pessoa.remover(id)
		print("Removido...")
	end

	if op == "4" then
		print("Digite o nome...")
		local id2 = io.read()
		Pessoa.mostrar(id2)
	end

until op == "0"