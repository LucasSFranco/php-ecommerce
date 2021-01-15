import Input from "#/atoms/Input"
import Button from "#/atoms/Button"
import Title from "#/atoms/Title"
import Form from "#/molecules/Form"

import Usuarios from "~/Usuarios"

tag PasswordReset

	prop email = ""
	prop loading = false

	def resetPassword
		loading = true
		await Usuarios.resetPassword(email)
		loading = false
		router.go("/signin")

	<self>
		<Form size="sm">
			<Title color="warning"> "Redefinir Senha"
			<Input bind.data=email> "E-mail"				
			<Button[mb: .5rem] color="warning" :click.resetPassword>
				if loading
					<i[mr: .5rem].fas.fa-spinner.fa-pulse>
				else
					<i[mr: .5rem].fas.fa-paper-plane>
				"Enviar"
			<Button color="blank" route-to="/signin">
				<i[mr: .5rem].fas.fa-chevron-left>
				"Voltar"

export default PasswordReset