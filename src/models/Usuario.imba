class Usuario
	
	prop auth = {}
	prop store = {}
	prop errorMessages = {}

	constructor
		auth.email = ""
		auth.senha = ""
		auth.confirmar_senha = ""
		store.nome = ""
		store.cpf = ""
		store.sexo = ""
		store.nascimento = ""
		store.celular = ""
		store.telefone_adicional = ""
		store.cep = ""
		store.endereco = ""
		store.cidade = ""
		store.uf = ""
		store.bairro = ""
		store.numero = ""
		store.complemento = ""

	def doValidate
		errorMessages = {}

		unless auth.email
			errorMessages.email = "Você deve preencher este campo"

		unless auth.senha
			errorMessages.senha = "Você deve preencher este campo"

		unless auth.confirmar_senha
			errorMessages.confirmar_senha = "Você deve preencher este campo"

		unless store.nome
			errorMessages.nome = "Você deve preencher este campo"

		unless store.cpf
			errorMessages.cpf = "Você deve preencher este campo"

		unless store.sexo
			errorMessages.sexo = "Você deve preencher este campo"

		unless store.nascimento
			errorMessages.nascimento = "Você deve preencher este campo"

		unless store.celular
			errorMessages.celular = "Você deve preencher este campo"

		unless store.telefone_adicional
			errorMessages.telefone_adicional = "Você deve preencher este campo"

		unless store.cep
			errorMessages.cep = "Você deve preencher este campo"

		unless store.endereco
			errorMessages.endereco = "Você deve preencher este campo"

		unless store.cidade
			errorMessages.cidade = "Você deve preencher este campo"

		unless store.uf
			errorMessages.uf = "Você deve preencher este campo"

		unless store.bairro
			errorMessages.bairro = "Você deve preencher este campo"

		unless store.numero
			errorMessages.numero = "Você deve preencher este campo"

		unless store.complemento
			errorMessages.complemento = "Você deve preencher este campo"

		return errorMessages

export default Usuario