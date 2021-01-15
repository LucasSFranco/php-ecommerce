import Input from "#/atoms/Input"
import Button from "#/atoms/Button"
import Title from "#/atoms/Title"
import FileInput from "#/atoms/FileInput"
import Text from "#/atoms/Text"
import Form from "#/molecules/Form"
import Row from "#/atoms/Row"
import Col from "#/atoms/Col"

import Produtos from "~/Produtos"
import Produto from "~/Produto"

tag Create

	prop item = new Produto
	prop loading = false
	prop errorMessages = {}

	def doCreate
		loading = true

		console.log item

		errorMessages = item.doValidate!
		console.log errorMessages

		unless Object.keys(errorMessages).length
			await Produtos.createItem(item)
			item = new Produto
			router.go('../')		
		loading = false


	<self>
		<Form size="md">
			<Title color="success"> "Camisetas"
			<Text size="sm"> "Campos marcados com (*) são obrigatórios."
			<FileInput
				color=(errorMessages.imagem ? "danger" : "primary")
				bind.data=item.storage.imagem				
				message=(errorMessages.imagem || "")
			> "Imagem *"
			<Input
				color=(errorMessages.titulo ? "danger" : "primary")
				bind.data=item.data.titulo				
				message=(errorMessages.titulo || "")
			> "Título *"
			<Row>
				<Col>
					<Input
						color=(errorMessages.valor ? "danger" : "primary")
						bind.data=item.data.valor
						message=(errorMessages.valor || "")
					> "Valor *"				
				<Col>
					<Input
						bind.data=item.data.desconto
					> "Desconto"
			<Row>
				<Col>
					<Input
						bind.data=item.data.parcelas
					> "Nº parcelas"	
				<Col>			
					<Input
						color=(errorMessages.valorParcela ? "danger" : "primary")
						bind.data=item.data.valorParcela
						message=(errorMessages.valorParcela || "")
					> "Valor/parcela *"
			<Button[mb: .5rem] color="success" :click.doCreate>
				if loading
					<i[mr: .5rem].fas.fa-spinner.fa-pulse>
				else
					<i[mr: .5rem].fas.fa-plus-square>
				"Criar"
			<Button color="secondary" route-to="">
				<i[mr: .5rem].fas.fa-chevron-left>
				"Voltar"

export default Create