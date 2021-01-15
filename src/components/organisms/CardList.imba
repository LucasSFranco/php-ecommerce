import Card from '#/molecules/Card'

tag CardList

	<self>
		<div.card-list>
			<Card>
			<Card>
			<Card>
			<Card>
			<Card>
			<Card>
	
	css &
		py: 5rem
		d: grid
		gtc: 1fr repeat(12, minmax(auto, 60px)) 1fr
		grid-gap: 20px @sm: 40px

		.card-list
			gc: 2 / span 12
			d: grid
			gtc: repeat(12, minmax(auto, 60px))
			grid-gap: 20px @sm: 40px
			
export default CardList