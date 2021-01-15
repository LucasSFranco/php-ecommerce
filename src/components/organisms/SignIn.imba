import Input from "#/atoms/Input"
import Button from "#/atoms/Button"
import Title from "#/atoms/Title"
import Link from "#/atoms/Link"
import Form from "#/molecules/Form"

import Usuarios from "~/Usuarios"

tag SignIn

	prop credencial = {}
	prop loading = false

	def signIn
		loading = true
		await Usuarios.signIn(credencial)
		loading = false

	<self>
		<Form size="sm">
			<Title> "Entrar"
			<Input> "E-mail"
			<Input type="password"> "Senha"				
			<Button[mb: .5rem] :click.signIn>
				if loading
					<i[mr: .5rem].fas.fa-spinner.fa-pulse>
				else
					<i[mr: .5rem].fas.fa-sign-in-alt>
				"Entrar"
			<Link size="sm" route-to="/signin/passwordreset"> "Esqueceu a senha?"

export default SignIn