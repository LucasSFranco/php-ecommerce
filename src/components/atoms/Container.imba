tag Container

	attr padding

	<self>
		<slot>

	css &
		d: grid
		gtc: 1fr repeat(12, minmax(auto, 60px)) 1fr
		grid-column-gap: 20px @sm: 40px

		&[padding] py: 5rem


export default Container