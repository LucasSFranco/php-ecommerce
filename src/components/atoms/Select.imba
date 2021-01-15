tag Select

	prop options = ["link 1", "link 2", "link 3"]
	prop message = ""
	prop data = ""

	attr color = "primary"

	def openDropdown
		$dropdown.classList.toggle('show')

	def changeInputValue e
		$input.value = e.target.textContent
		data = e.target.textContent
		$dropdown.classList.remove('show')

	def mount
		window.addEventListener('click', &) do |e|
			if $select != e.target.closest('.input-wrapper')
				$dropdown.classList.remove('show')
			render!

	def render
		<self>
			<label> <slot>
			<div$select.input-wrapper :click.openDropdown>
				<input$input type="text" placeholder="Selecione uma opção..." disabled>
				buttonIcon = $dropdown and $dropdown.classList.contains('show') ? "fa-chevron-up" : "fa-chevron-down"
				<button> <i.fas .{buttonIcon}>
				<div$dropdown.dropdown :click.stop>
					<div>
						for option in options
							<a.option :click.changeInputValue> option
			<small> message
	
	css &
		w: 100%
		us: none
		mb: .5rem
		
		label
			fs: .75rem
			tt: uppercase

		.input-wrapper
			d: flex
			cursor: pointer
			pos: relative

			input
				p: .5rem .75rem
				fs: .875rem
				w: 100%
				outline: none
				us: auto
				c: grey8
				bg: white
				cursor: pointer

				@placeholder
					fs: .875rem
					c: grey5

			button
				p: .5rem .75rem
				outline: none
				c: white
				cursor: pointer

			.rotate
				rotate: 180deg

			.dropdown
				zi: 10
				pos: absolute
				min-width: 200px
				bg: white
				c: grey8
				d: none
				py: .5rem
				bxs: lg
				max-height: 9.5rem
				of: auto
				cursor: default
				t: calc(100% + 5px)

				.option
					d: block
					p: .5rem .75rem
					w: 100%
					bg@hover: blue4
					cursor: pointer
					fs: .75rem
		
			.show
				d: block

			::-webkit-scrollbar
				w: 5px

			::-webkit-scrollbar-track
				background: grey3

			::-webkit-scrollbar-thumb
				background: grey5 @hover: grey6

		&[color="primary"]  
			label c: grey5 
			small c: grey5 
			button bg: grey5
			.input-wrapper bd: grey5	
				@hover button bg: grey6 
		&[color="danger"]   
			label c: red5	
			small c: red5 
			button bg: red5
			.input-wrapper bd: red5		
				@hover button bg: red6 
		&[color="success"]  
			label c: green5
			small c: green5 
			button bg: green5		
			.input-wrapper bd: green5	
				@hover button bg: green6 

export default Select