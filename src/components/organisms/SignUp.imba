import Input from "#/atoms/Input"
import Select from "#/atoms/Select"
import Button from "#/atoms/Button"
import Title from "#/atoms/Title"
import Text from "#/atoms/Text"
import DatePicker from "#/atoms/DatePicker"
import Form from "#/molecules/Form"

import Usuarios from "~/Usuarios"
import Usuario from "~/Usuario"

tag SignUp

	prop usuario = new Usuario
	prop loading = false
	prop errorMessages = {}

	def createUser
		loading = true
		console.log usuario

		errorMessages = usuario.doValidate!
		console.log errorMessages

		unless Object.keys(errorMessages).length
			# await Usuarios.createUser(usuario)
			# usuario = new Usuario
			# router.go('../')		
			console.log "created"
		loading = false


	<self>
		<Form size="xl">
			<Title color="success"> "Cadastrar-se"
			<Text size="sm">
				"Campos marcados com (*) são obrigatórios."
			<div.row>
				<Input
					color=(errorMessages.nome ? "danger" : "primary")
					message=(errorMessages.nome || "")
					bind.data=usuario.store.nome
				> "Nome Completo *"
				<div.row>
					<Input
						color=(errorMessages.cpf ? "danger" : "primary")
						message=(errorMessages.cpf || "")
						bind.data=usuario.store.cpf
					> "CPF *"
				<Input
					color=(errorMessages.email ? "danger" : "primary")
					message=(errorMessages.email || "")
					bind.data=usuario.auth.email
				> "E-mail *"
				<div.row>
					<Input type="password"
						color=(errorMessages.senha ? "danger" : "primary")
						message=(errorMessages.senha || "")
						bind.data=usuario.auth.senha
					> "Senha *"
					<Input type="password"
						color=(errorMessages.confirmar_senha ? "danger" : "primary")
						message=(errorMessages.confirmar_senha || "")
						bind.data=usuario.auth.confirmar_senha
					> "Confirmar Senha *"

				<div.row>
					<Select
						options=["Masculino", "Feminino"]
						color=(errorMessages.sexo ? "danger" : "primary")
						message=(errorMessages.sexo || "")
						bind.data=usuario.store.sexo
					> "Sexo *"
					<DatePicker
						color=(errorMessages.nascimento ? "danger" : "primary")
						message=(errorMessages.nascimento || "")
						bind.data=usuario.store.nascimento
					> "Nascimento *"
				<div>
				<div.row>
					<Input
						color=(errorMessages.celular ? "danger" : "primary")
						message=(errorMessages.celular || "")
						bind.data=usuario.store.celular
					> "Celular *"
					<Input
						color=(errorMessages.telefone_adicional ? "danger" : "primary")
						message=(errorMessages.telefone_adicional || "")
						bind.data=usuario.store.telefone_adicional
					> "Telefone Adicional"
				<div>
			<div[w: 100% h: 1px bg: grey4 my: 1rem]>
			<div.row>
				<div.row>
					<div.row>
						<Input
							color=(errorMessages.cep ? "danger" : "primary")
							message=(errorMessages.cep || "")
							bind.data=usuario.store.cep
						> "CEP *"
				<div>
				<Input
					color=(errorMessages.endereco ? "danger" : "primary")
					message=(errorMessages.endereco || "")
					bind.data=usuario.store.endereco
				> "Endereço *"
				<div.row>
					<Input
						color=(errorMessages.cidade ? "danger" : "primary")
						message=(errorMessages.cidade || "")
						bind.data=usuario.store.cidade
					> "Cidade *"
					<Select
						options=["Acre - AC", "Alagoas - AL", "Amapá - AP", "Amazonas - AM", "Bahia - BA", "Ceará - CE", "Distrito Federal - DF", "Espírito Santo - ES", "Goiás - GO", "Maranhão - MA", "Mato Grosso - MT", "Mato Grosso do Sul - MS", "Minas Gerais - MG", "Pará - PA", "Paraíba - PB", "Paraná - PR", "Pernambuco - PE", "Piauí - PI", "Rio de Janeiro - RJ", "Rio Grande do Norte - RN", "Rio Grande do Sul - RS", "Rondônia - RO", "Roraima - RR", "Santa Catarina - SC", "São Paulo - SP", "Sergipe - SE", "Tocantins - TO"]
						color=(errorMessages.uf ? "danger" : "primary")
						message=(errorMessages.uf || "")
						bind.data=usuario.store.uf
					> "UF *"
				<Input
					color=(errorMessages.bairro ? "danger" : "primary")
					message=(errorMessages.bairro || "")
					bind.data=usuario.store.bairro
				> "Bairro *"
				<div.row>
					<Input
						color=(errorMessages.numero ? "danger" : "primary")
						message=(errorMessages.numero || "")
						bind.data=usuario.store.numero
					> "Nº *"
					<Input
						color=(errorMessages.complemento ? "danger" : "primary")
						message=(errorMessages.complemento || "")
						bind.data=usuario.store.complemento
					> "Complemento"
			<Button color="success" :click.createUser>
				if loading
					<i[mr: .5rem].fas.fa-spinner.fa-pulse>
				else
					<i[mr: .5rem].fas.fa-user-plus>
				"Cadastrar-se"

	css &
		small
			fs: .75rem
			c: grey8
			mb: .5rem

		.row
			d: grid
			gtc: 1fr @md: 1fr 1fr
			gcg: 1rem

export default SignUp