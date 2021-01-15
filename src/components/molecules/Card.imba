import Button from '#/atoms/Button'
import Text, {Highlight} from '#/atoms/Text'

tag Card

	prop item = {
		titulo: "CAMISETA CHURRASCO É MELHOR QUE SUSHI - ALGODÃO BRANCA"
		valor: 79.00
		desconto: 13
		parcelamento:
			vezes: 2
			valor: 34.50
		imagem: "https://images.unsplash.com/photo-1598032895397-b9472444bf93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80"
	}

	def calculateDiscount value, discount
		value * (100 - discount)/100

	def formatValue value
		"R$ {String(value.toFixed(2)).replace(".", ",")}"

	<self>
		<div.image-container>
			<img src=item.imagem>
			if item.desconto
				<div.discount-percent> "{item.desconto}% OFF"
		<div.card-text>
			<Text weight="bold" text-align="center"> item.titulo
			<div>
				<Text text-align="center">
					if item.desconto
						<Text[m: 0] size="sm">
							"DE "
							<Highlight[td: line-through]> formatValue(item.valor)
						" "
					<Text[m: 0]>
						"POR "
						<Highlight>
							formatValue(calculateDiscount(item.valor, item.desconto))
						" À VISTA"
			<div>
				if item.parcelamento
					<Text size="sm" color="secondary" text-align="center">
						"OU EM ATÉ "
						<Highlight color="secondary">
							"{item.parcelamento.vezes}X"
						" DE "
						<Highlight color="secondary">
							formatValue(item.parcelamento.valor)
						" "
						<Text[m: 0] size="sm" color="secondary">
							"SEM JUROS"
			<div>
				<Text size="sm" color="secondary" text-align="center">
					"O"
					<Highlight color="secondary">
						"{item.parcelamento.vezes}X"
					" DE "
					<Highlight color="secondary">
						formatValue(item.parcelamento.valor)
					" "
					<Text[m: 0] size="sm" color="secondary">
						"SEM JUROS"
		<Button color="success" size="full"> "Comprar"

	css	&
		gce: span 12 @sm: span 6 @md: span 4 @lg: span 3
		d: flex
		fld: column
		us: none
		bg: grey1
		
		@hover
			y: -1.25%
			scale: 1.025

		.image-container
			pos: relative

			img
				w: 100%

			.discount-percent
				pos: absolute
				bg: black
				t: 5px
				r: 0
				fs: .675rem
				p: .25rem .5rem
				c: white

		.card-text
			p: .5rem

export default Card