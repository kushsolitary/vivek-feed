backgroundLayer = new BackgroundLayer
	backgroundColor: '#f2f2f2'

Framer.Defaults.Animation = {
	curve: "spring(100,15,0)"
}

Framer.Device.deviceType = "iphone-6-spacegray"


# This imports all the layers for "Configuration" into configurationLayers2
s = Framer.Importer.load "imported/ora"

s.second.opacity = 0

# Hide text layer
s.text.opacity = 0
s.text.y += 40

# Zoom in and blur the background image
s.backk.scale = 1.2
s.backk.blur = 5

# Animate after a delay
Utils.delay 2, ->
	s.backk.animate
		curve: "spring(100,40,0)"
		properties: { blur: 0, scale: 1 }

	s.text.animate
		curve: "spring(100,40,0)"
		properties: { opacity: 1, y: s.text.y - 40 }

Utils.delay 2, ->
	s.item1.animate
		properties: { y: s.item1.y - 240 }
	s.sublist.animate
		properties: { y: s.sublist.y - 240 }
	s.backdrop.animate
		properties: { y: s.backdrop.y - 120 }
Utils.delay 2.1, ->
	s.item2.animate
		properties: { y: s.item2.y - 240 }
Utils.delay 2.2, ->
	s.item3.animate
		properties: { y: s.item3.y - 240 }
Utils.delay 2.3, ->
	s.item4.animate
		properties: { y: s.item4.y - 240 }
Utils.delay 2.4, ->
	s.item5.animate
		properties: { y: s.item5.y - 240 }

# Animate arrow
s.backdrop.opacity = 1

expanded = false
s.item1.on Events.TouchEnd, ->
	if !expanded
		if s.backdrop.opacity isnt 1
			return
		s.backdrop.opacity = 0
		s.arrow.animate
			properties: { rotation: 90 }


		s.item5.animate
			properties: { y: s.item5.y + 410 }

		Utils.delay 0.03, ->
			s.item4.animate
				properties: { y: s.item4.y + 410 }
		Utils.delay 0.06, ->
			s.item3.animate
				properties: { y: s.item3.y + 410 }
		Utils.delay 0.09, ->
			s.item2.animate
				properties: { y: s.item2.y + 410 }
	else
		s.backdrop.animate
			properties: {opacity: 1}
			curve: "spring(200,25,0)"

		s.arrow.animate
			properties: { rotation: 0 }

		s.item2.animate
			properties: { y: s.item2.y - 410 }

		Utils.delay 0.03, ->
			s.item3.animate
				properties: { y: s.item3.y - 410 }
		Utils.delay 0.06, ->
			s.item4.animate
				properties: { y: s.item4.y - 410 }
		Utils.delay 0.09, ->
			s.item5.animate
				properties: { y: s.item5.y - 410 }

	if expanded is false
		expanded = true
	else
		expanded = false


# Tap on sublist item
s.subtap.on Events.TouchEnd, ->
	# Hide everything
	s.text.animate
		properties: {opacity: 0}
	s.item5.animate
		properties: {opacity: 0}
	s.item3.animate
		properties: {opacity: 0}
	s.item4.animate
		properties: {opacity: 0}
	s.item2.animate
		properties: {opacity: 0}
	s.item1content.animate
		properties: {opacity: 0}
	s.sublist.animate
		properties: {opacity: 0}
	s.ad.animate
		properties: {opacity: 0}

	s.item1bg.animate
		properties: { y: -s.list.y + 145 }

	Utils.delay 0.2, ->
		s.second.animate
			properties: { opacity: 1 }

s.back.on Events.TouchEnd, ->
	# Show everything
	Utils.delay 0.5, ->
		s.text.animate
			properties: {opacity: 1}
		s.item5.animate
			properties: {opacity: 1}
		s.item3.animate
			properties: {opacity: 1}
		s.item4.animate
			properties: {opacity: 1}
		s.item2.animate
			properties: {opacity: 1}
		s.item1content.animate
			properties: {opacity: 1}
		s.sublist.animate
			properties: {opacity: 1}
		s.ad.animate
			properties: {opacity: 1}

	s.item1bg.animate
		properties: { y: 0 }

	s.second.animate
		properties: { opacity: 0 }
