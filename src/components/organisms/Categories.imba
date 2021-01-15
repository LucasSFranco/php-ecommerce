import CollapsableTable from "#/molecules/CollapsableTable"
import Title from "#/atoms/Title"
import Button from "#/atoms/Button"

import Produtos from "~/Produtos"

tag Categories

	prop loading = false

	def setup
		loading = true
		itens = await Produtos.getItens()
		console.log itens
		loading = false

	<self>
		<section>
			<div[d: flex jc: space-between ai: flex-start]>
				<Title align="start"> "Categorias"
				<Button color="success">
					<i[mr: .5rem].fas.fa-plus-square> 
					"Adicionar Categoria"
			if loading
				<div> "loading"
			else
				<CollapsableTable category.itens=itens>

	css &
		py: 5rem
		d: grid
		gtc: 1fr repeat(12, minmax(auto, 60px)) 1fr
		grid-column-gap: 20px @sm: 40px

		section
			gc: 2 / span 12
			d: flex
			fld: column


export default Categories