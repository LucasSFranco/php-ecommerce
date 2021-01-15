tag Title

	attr color = "primary"
	attr align = "center" 

	<self> <slot>

	css &
		fw: 600
		fs: 1.5rem
		tt: uppercase
		c: grey8
		pos: relative
		mb: 1.5rem
		us: none

		@after
			content: ""
			w: 72px
			h: 5px
			pos: absolute
			b: -5px

		&[align="start"] ta: left 	 
			@after l: 0
		&[align="center"] ta: center
			@after l: 50% x: -50%
		&[align="end"] ta: right 	
			@after r: 0

		&[color="primary"] @after bg: blue4
		&[color="warning"] @after bg: yellow4
		&[color="danger"]  @after bg: red4
		&[color="success"] @after bg: green4

export default Title