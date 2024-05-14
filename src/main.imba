var numDiv = 360 * 4
var colors = new Array<number>(numDiv)

# def update
# 	var first = colors.shift()
# 	colors.push(first)

tag App
	def setup
		for i in [0...colors.length]
			# colors[i] =  (numDiv / 360 * i) % 360
			colors[i] =  i / numDiv * 360 * 4

	def render
		<self @click=(update()) [d:flex inset:0]>
			for i in [0...numDiv]
				<div [bd:0px h:100vh w:{100 / numDiv}vw bg:hsl({colors[i]},100%,50%) box-sizing:border-box]>
		first = colors.shift()
		colors.push(first)
		# window.requestAnimationFrame(update)

imba.mount <App autorender=60fps>
