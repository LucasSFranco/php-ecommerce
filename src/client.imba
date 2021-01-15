import './styles'

import 'imba/dist/imba-router'

import SignIn from '#/organisms/SignIn'
import PasswordReset from '#/organisms/PasswordReset'
import SignUp from '#/organisms/SignUp'
import CardList from '#/organisms/CardList'
import Navbar from '#/organisms/Navbar'
import Admin from '#/organisms/Admin'
import Categories from '#/organisms/Categories'
import Create from '#/organisms/Create'

tag App

	def render
		<self>
			<Navbar>
			<main[pt: 6.5rem]>
				<Admin route.exact="/admin">
				<Categories route.exact="/admin/categorias">
				<Create route.exact="/admin/categorias/criar">
				<SignIn route.exact="/signin">
				<PasswordReset route="/signin/passwordreset">
				<SignUp route="/signup">
				<CardList route="/products">

imba.mount <App>
