tag Button

	attr color = "primary"
	attr size = "auto"

	<self>
		<slot>

	css &
		ws: nowrap
		ta: center
		tt: uppercase
		fs: .875rem
		fw: 500
		p: .5rem .75rem
		outline: none
		cursor: pointer
		c: white

		&[color="primary"]   bg: blue4   @hover: blue5   c@hover: blue1
		&[color="secondary"] bg: grey5   @hover: grey6   c@hover: grey1
		&[color="danger"]    bg: red4    @hover: red5    c@hover: red1
		&[color="warning"]   bg: yellow4 @hover: yellow5 c@hover: yellow1
		&[color="success"]   bg: green4  @hover: green5  c@hover: green1

		&[size="auto"] w: auto
		&[size="full"] w: 100%

export default Button