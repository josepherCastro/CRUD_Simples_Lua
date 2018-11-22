Pessoa = {}
Pessoa._index = Pessoa

function Pessoa:new(nome, sobrenome, idade)
	print(Pessoa)
    local pessoa = {}
   	setmetatable(pessoa, Pessoa)
  	pessoa.nome = nome
   	pessoa.sobrenome = sobrenome
	pessoa.idade = idade
	table.insert(Pessoa, pessoa)
	return pessoa
end

function Pessoa.cadastrar()
	io.write("\027[H\027[2J")
	print("Digite seu nome...")
	local nome = io.read()
	print("Digite seu sobrenome...")
	local sobrenome = io.read()
	print("Digite sua idade...")
	local idade = io.read()

	pessoa = Pessoa:new(nome, sobrenome, idade)
	--print("Pessoa criada: " .. pessoa.nome .. " " .. pessoa.sobrenome)
end

function Pessoa.listar()
	io.write("\027[H\027[2J")
    for i,pessoa in ipairs(Pessoa) do
		  print('ID:        ', i)
		  print('Nome:      ',pessoa.nome)
		  print('Sobrenome: ',pessoa.sobrenome)
		  print('Idade:     ',pessoa.idade)
	end
end

function Pessoa.remover(id)
	io.write("\027[H\027[2J")
    table.remove(Pessoa, id)
end

function Pessoa.mostrar(id2)
	io.write("\027[H\027[2J")
	for i,pessoa in ipairs(Pessoa) do
		if pessoa.nome == id2 then
		  	print('*** Alterar ***')
		  	print('1) Nome:      ',pessoa.nome)
		  	print('2) Sobrenome: ',pessoa.sobrenome)
		  	print('3) Idade:     ',pessoa.idade)

		  	local op = io.read()

		  	if op == "1" then
		  		print('Novo nome...')
		  		pessoa.nome = io.read()
		  	end
		  	if op == "2" then
		  		print('Novo sobrenome...')
		  		pessoa.sobrenome = io.read()
		  	end
		  	if op == "3" then
		  		print('Nova idade...')
		  		pessoa.idade = io.read()
		  	end

		  	break
		end
	end	
end