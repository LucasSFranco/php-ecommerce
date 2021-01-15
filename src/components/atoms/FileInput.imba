tag FileInput

	prop message = ""
	prop data = null

	attr color = "primary"

	def bindData e
		data = e.target.files[0] || data
		$viewer.value = data.name

	<self>
		<label> <slot>
		<label.input-wrapper>
			<input type="file" accept="image/png, image/jpeg , image/jpg" :change.bindData>
			<input$viewer.viewer placeholder="Escolha um arquivo..." disabled>
			<span.button> <i.fas.fa-upload>
		<small> message

	css &
		mb: .5rem
		w: 100%
		us: none

		label
			fs: .75rem
			tt: uppercase

		.input-wrapper
			d: flex

			.viewer			
				tt: none			
				p: .5rem .75rem	
				w: 100%		
				fs: .875rem
				us: auto
				c: grey8
				bg: white
				cursor: default
				d: flex
				ai: center

				@placeholder
					c: grey5

			input
				d: none
			
			.button
				p: .25rem .75rem
				outline: none
				fs: 1rem
				c: white
				cursor: pointer
				bg: grey5

		small
			mt: .25rem
			d: block
			lh: 1
			fs: .75rem
			
		&[color="primary"]  
			label c: grey5 
			small c: grey5 
			.input-wrapper bd: grey5	
			.button bg: grey5 @hover: grey6
		&[color="danger"]   
			label c: red5	
			small c: red5 
			.input-wrapper bd: red5		
			.button bg: red5 @hover: red6
		&[color="success"]  
			label c: green5
			small c: green5 
			.input-wrapper bd: green5	
			.button bg: green5 @hover: green6					

export default FileInput