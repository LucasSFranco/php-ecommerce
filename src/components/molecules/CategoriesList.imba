tag CategoriesList

	prop links = [
		name: "Lançamentos"
		route: "lancamentos"
		---
		name: "Calças"
		route: "calcas"
		---
		name: "Camisetas"
		route: "camisetas"
	]

	def scrollToLeft
		timeout = setTimeout(&, 1) do
			if $list.scrollLeft is 0
				clearTimeout(timeout)
				render!
			$list.scrollLeft -= 1
			scrollToLeft!
		render!

	def scrollToRight
		timeout = setTimeout(&, 1) do
			if $list.scrollLeft is $list.scrollWidth - $list.clientWidth
				clearTimeout(timeout)
				render!
			$list.scrollLeft += 1
			scrollToRight!
		render!

	def stopScrolling
		clearTimeout(timeout) if timeout

	def mount
		render!

	<self>
		if $list and $list.scrollWidth > $list.offsetWidth
			<div.scroll-button.left .disable=($list.scrollLeft is 0)
				:mousedown.scrollToLeft
				:mouseup.stopScrolling
				:mouseout.stopScrolling
			> <i.fa.fa-chevron-left>
		<div$list.categories-list>
			for link in links
				<div.category-link route-to="/produtos/{link.route}"> link.name
		if $list and $list.scrollWidth > $list.offsetWidth
			<div.scroll-button.right .disable=($list.scrollLeft is $list.scrollWidth - $list.clientWidth)
				:mousedown.scrollToRight
				:mouseup.stopScrolling
				:mouseout.stopScrolling
			> <i.fa.fa-chevron-right>

	css &
		pos: relative
		w: 100%
		gr: 2
		gc: 2 / span 12
		d: flex
		us: none
		bdt: 1px solid grey4

		.categories-list
			mx: 3rem
			d: flex
			ofx: hidden

			.category-link
				p: .5rem 1rem
				c: grey8 @hover: blue4
				cursor: pointer
				fs: .875rem

		.scroll-button
			pos: absolute
			zi: 1
			p: .3rem 1rem
			m: .2rem
			c: white @hover: blue1
			cursor: pointer
			bg: blue4 @hover: blue5
			fs: .875rem

		.left
			l: 0

		.right
			r: 0

		.disable
			bg: grey3 @hover: grey3
			c: grey4 @hover: grey4
			cursor: default

export default CategoriesList