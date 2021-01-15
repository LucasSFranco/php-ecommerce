tag Form

	attr size = "md"

	<self>
		<div.form>
			<slot>

	css &
		py: 5rem
		d: grid
		gtc: 1fr repeat(12, minmax(auto, 60px)) 1fr
		grid-gap: 20px @sm: 40px
		us: none

		.form
			p: 1rem .75rem
			d: flex
			fld: column
			bxs: lg

		&[size="sm"] .form gc: 2 / span 12 @sm: 4 / span 8 @md: 5 / span 6  @lg: 6 / span 4
		&[size="md"] .form gc: 2 / span 12 @md: 4 / span 8 @lg: 5 / span 6
		&[size="lg"] .form gc: 2 / span 12 @lg: 4 / span 8
		&[size="xl"] .form gc: 2 / span 12

export default Form