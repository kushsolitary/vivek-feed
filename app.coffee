backgroundLayer = new BackgroundLayer
	backgroundColor: '#f2f2f2'

Framer.Defaults.Animation = {
	curve: "spring(200,25,0)"
}

Framer.Device.contentScale = 0.5

Framer.Device.deviceType = "fullscreen"

# This imports all the layers for "Configuration" into configurationLayers2
s = Framer.Importer.load "imported/vivek2"

s.twitter.opacity = 0;
s.twitter.x -= 100;
s.twitter.animate
	properties: {opacity: 1, x: s.twitter.x + 100}

s.three.opacity = 0;
s.three.x += 100;
s.three.y -= 100;
s.three.animate
	properties: {opacity: 1, x: s.three.x - 100, y: s.three.y + 100}
	delay: 0.1

s.four.opacity = 0;
s.four.x -= 100;
s.four.y -= 100;
s.four.animate
	properties: {opacity: 1, x: s.four.x + 100, y: s.four.y + 100}
	delay: 0.2

s.five.opacity = 0;
s.five.x -= 100;
s.five.y += 100;
s.five.animate
	properties: {opacity: 1, x: s.five.x + 100, y: s.five.y - 100}
	delay: 0.3

s.six.opacity = 0;
s.six.x += 100;
s.six.y += 100;
s.six.animate
	properties: {opacity: 1, x: s.six.x - 100, y: s.six.y - 100}
	delay: 0.4

s.seven.opacity = 0;
s.seven.x -= 100;
s.seven.y += 100;
s.seven.animate
	properties: {opacity: 1, x: s.seven.x + 100, y: s.seven.y - 100}
	delay: 0.5

