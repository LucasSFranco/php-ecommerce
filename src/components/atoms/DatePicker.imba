import flatpickr from "flatpickr"

tag DatePicker

	prop message = ""
	prop data = ""

	attr color = "primary"

	def mount
		flatpickr($datepicker, {
			appendTo: $datepicker
			wrap: 'true'
			dateFormat: 'd-m-Y'
			locale:
				weekdays:
					shorthand: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb']
					longhand: ['Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado']       
				months:
					shorthand: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
					longhand: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro']
		})
	
	<self>
		<label> <slot>
		<div$datepicker.input-wrapper>
			<input type="text" placeholder="Selecione uma data..." data-input bind=data>
			<button data-toggle> <i.fas.fa-calendar-alt>
		<small> message
	
	css &
		w: 100%
		us: none
		mb: .5rem
		pos: relative

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
				p: .25rem .75rem
				outline: none
				c: white
				cursor: pointer
				fs: 1rem

		&[color="primary"]
			label
				c: grey5 
			input
				bd: grey5
				bdr: none
			button 
				bd: grey5	
				bdl: none
				bg: grey5
			.input-wrapper@hover
				button bg: grey6 
			small
				c: grey5
		&[color="danger"]
			label
				c: red5	 
			input
				bd: red5
				bdr: none
			button 
				bd: red5	
				bdl: none	
				bg: red5
			.input-wrapper@hover
				button bg: red6 
			small
				c: red5
		&[color="success"]
			label
				c: green5 
			input
				bd: green5
				bdr: none
			button 
				bd: green5	
				bdl: none
				bg: green5
			.input-wrapper@hover
				button bg: green6 
			small
				c: green5

export default DatePicker