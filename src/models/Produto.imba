class Produto
	
	prop data = {}
	prop errorMessages = {}
	prop storage = {}

	constructor
		storage.imagem = null
		data.titulo = ""
		data.valor = ""
		data.desconto = 0
		data.parcelas = 0
		data.valorParcela = 0

	def doValidate
		errorMessages = {}

		unless storage.imagem
			errorMessages.imagem = "Você deve escolher uma imagem"
		
		unless data.titulo
			errorMessages.titulo = "Você deve preencher este campo"
		
		unless data.valor
			errorMessages.valor = "Você deve preencher este campo"
		
		unless data.valorParcela
			if data.parcelas
				errorMessages.valorParcela = "Você deve preencher este campo"

		return errorMessages

export default Produto