# Use desktop cursor
document.body.style.cursor = "auto"

# Springs

iOSAppLaunch = "spring(320,40,0)"
iOSKeyboard = "spring(280,33,10)"
iOSSlideView = "spring(220,28,0)"
iOSRetreat = "spring(220,28,0)"
iOSActionSheet = "spring(280,33,10)"

materialAppLaunch = "spring(260,32,16)"
materialKeyboard = "spring(220,35,25)"
materialSlideView = "spring(220,35,25)"
materialRetreat = "spring(160,30,10)"
materialActionSheet = "spring(250,37,20)"

floaty = "spring(160,40,10)"
hello = "spring(400,22,20)"
retreat = "spring(160,30,10)"
pop = "spring(280,13,10)"
bigPop = "spring(370,8,0)"
dramatic = "spring(120,140,0)"
slow = "spring(100,50,0)"
quick = "spring(400,23,6)"
loose = "spring(240,18,28)"

highlight.originX = 1
highlight.originY = 1

highlight.states = 
	neutral:
		width: 0
		height: 0
		opacity: 1
		x: 90
		y: 90
		animationOptions:
			curve: retreat
	hoverMenu:
		width: 180
		height: 180
		backgroundColor: "#1C9BE3"
		opacity: 1
		x: 0
		y: 0
		animationOptions:
			curve: iOSSlideView
	clicked:
		width: 190
		height: 190
		backgroundColor: "#0A69A0"
		x: -5
		y: -5
		animationOptions:
			curve: pop

highlight.states.switchInstant "neutral"

btn_target.onMouseOver ->
	highlight.states.switch "hoverMenu"

btn_target.onMouseOut ->
	highlight.states.switch "neutral"
	
btn_target.onMouseDown ->
	highlight.states.switch "clicked"
	
btn_target.onMouseUp ->
	highlight.states.switch "hoverMenu"
	

		
		