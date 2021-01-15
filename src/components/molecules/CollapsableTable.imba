import Button from "#/atoms/Button"

tag CollapsableTable

	prop category = {name: "Camisetas", fields: ["Nome", "Preço"], itens: [
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		{name: "Camiseta Manga Longa", price: 12.32}
		]}

	def showTable
		$table.classList.toggle('show')

	<self>
		<div.table-header>
			<h3> category.name
			<div[d: flex]>
				<Button color="success" route-to="criar">
					<i[mr: .5rem].fas.fa-plus-square>
					"Adicionar"
				<Button :click.showTable>
					<i.fas .{$table and $table.classList.contains('show') ? "fa-minus" : "fa-plus"}>
		<table$table>
			<thead>
				<tr>
				for field in category.fields
					<th> field
				<th.actions> "Ações"
			<tbody>
				for item in category.itens
					<tr>
						for own field of item
							<th> item[field]
						<th.actions>
							<i[p: .5rem .75rem cursor: pointer c: yellow4 @hover: yellow5].fas.fa-edit title="Editar" route-to="editar/{123}">
							<i[p: .5rem .75rem cursor: pointer c: red4 @hover: red5].fas.fa-trash-alt title="Excluir" route-to="excluir/{123}">

	css &

		.table-header
			gc: 2 / span 12
			d: flex
			jc: space-between
			ai: center
			bdb: 2px solid white

			h3
				w: 100%
				bg: blue4
				py: .5rem
				pl: 1rem
				c: white
				fs: .875rem
				fw: 600
				tt: uppercase

		table
			d: none
			gc: 2 / span 12
			mb: 1.5rem

			.actions
				w: 1%
				white-space: nowrap

			thead
				bg: blue4

				th
					fw: 600
					c: grey8
					p: .5rem
					fs: .875rem

			tbody

				tr
					@nth-child(even)
						bg: blue1
					
					@nth-child(odd)
						bg: grey1

					th
						color: grey5
						fw: 400
						fs: .875rem
		
		.show
			d: block

export default CollapsableTable