import Input from "#/atoms/Input"
import Button from "#/atoms/Button"
import Title from "#/atoms/Title"
import Form from "#/molecules/Form"

import Usuarios from "~/Usuarios"

tag Admin

	prop credencial = {}
	prop loading = false

	def signIn
		loading = true
		await Usuarios.signIn(credencial)
		loading = false

	<self>
		<Form size="sm">
			<Title>
				"Entrar"
				<span[pos: absolute c: grey5 fs: .675rem ml: .25rem]> "ADMIN"
			<Input> "E-mail"
			<Input type="password"> "Senha"				
			<Button[mb: .5rem] :click.signIn>
				if loading
					<i[mr: .5rem].fas.fa-spinner.fa-pulse>
				else
					<i[mr: .5rem].fas.fa-sign-in-alt>
				"Entrar"

export default Admin