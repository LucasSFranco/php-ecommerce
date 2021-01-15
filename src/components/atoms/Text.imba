export tag Highlight

	attr color = "primary"

	<self>
		<slot>
	
	css &
		fs: inherit
		lh: inherit

		&[color="primary"] 	 c: blue4
		&[color="secondary"] c: grey8

tag Text

	attr color 	    = "primary"
	attr text-align = "left"
	attr size       = "md"
	attr weight     = "regular"

	<self>
		<slot>
		
	css &
		mb: .5rem
		d: inline-block

		&[color="primary"] 	 c: grey8
		&[color="secondary"] c: grey5
		&[color="warning"]   c: yellow5
		&[color="danger"]    c: red5
		&[color="success"]   c: success5

		&[text-align="left"]   ta: left
		&[text-align="center"] ta: center
		&[text-align="right"]  ta: right

		&[size="xs"] fs: .5rem
		&[size="sm"] fs: .75rem
		&[size="md"] fs: .875rem
		&[size="lg"] fs: 1rem

		&[weight="regular"] fw: 400
		&[weight="bold"]    fw: 500

export default Text