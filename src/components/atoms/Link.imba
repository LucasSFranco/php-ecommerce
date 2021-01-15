tag Link

	attr size = "md"

	<self> <slot>

	css &
		td: none
		cursor: pointer
		c: grey8 @hover: blue4
		py: .25rem

		&[size="xs"] fs: .5rem
		&[size="sm"] fs: .75rem
		&[size="md"] fs: .875rem
		&[size="lg"] fs: 1rem
 
export default Link