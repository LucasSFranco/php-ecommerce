import CategoriesList from "#/molecules/CategoriesList"
import Container from "#/atoms/Container"

tag Navbar

	<self>
		<Container>
			<div.navbar>
				<h1.brand> "E-commerce"
				<div.search>
					<input type="text" placeholder="O que você procura?">
					<button> <i.fas.fa-search>
				<div.wrapper>
					<div.nav-item route-to="/signin">				
						<i.fas.fa-user>
						<div.text>
							<small> "minha"
							<p> "conta"
					<div.nav-item>				
						<i.fas.fa-shopping-basket>
						<div.text>
							<small> "carrinho"
							<p> "00 itens"
		<Container>
			<CategoriesList>

	css &
		w: 100%
		pos: fixed
		z-index: 999999
		bg: white
		bxs: 0 0 10px black/10

		.navbar
			gc: 2 / span 12
			d: flex
			ai: center
			jc: space-between
			us: none
			h: 4rem

			.brand				
				fw: 600
				fs: 2rem
				c: blue4
				mr: 2rem
				white-space: nowrap

			.search
				w: 100%
				d: flex
				bd: 1px solid grey4

				input
					tt: uppercase
					outline: none
					fs: .75rem
					p: .5rem .75rem
					c: grey8
					us: auto
					w: 100%

					@placeholder	
						tt: uppercase
						c: grey7

				button
					outline: none
					p: .3rem 1rem
					m: .2rem
					bg: grey4 @hover: grey5
					cursor: pointer
					c: grey8 @hover: grey9

					i
						h: .75rem

			.wrapper
				d: flex

			.nav-item
				ml: 2rem	
				d: flex
				cursor: pointer
				color: grey8
				
				@hover p color: blue4

				i
					d: flex
					ai: flex-end
					fs: 2rem

				.text
					ml: .5rem
					tt: uppercase

					small
						fs: .75rem
					
					p
						fs: .875rem
						lh: 1
						fw: 600

export default Navbar