using Luxor, Colors
Drawing(600, 400, "demo.png")
origin()
background(RGB(79/255,195/255,247/255))

# Drawing Sun
sethue("yellow")
circle(225, -125, 40, :fill)
setopacity(0.5)
circle(225, -125, 60, :fill)

# Drawing Sea
setopacity(1)
sethue(RGB(33/255,150/255,243/255))
arc2sagitta(Point(-300,0), Point(300,0), 15, :fill)
box(Point(-300,0), Point(300,200), :fill)

# Drawing Island
sethue(RGB(121/255,85/255,72/255))
arc2sagitta(Point(-350, 200), Point(350, 200), 100, :fill)

# Drawing Clouds
sethue("white")
setopacity(0.4)
for i in 1:5
    translate(rand(-250:150), rand(-150:-50))
    spiral(rand()+1, 1, period=5*pi, :stroke)
    origin()
end

# Drawing Waves
setopacity(1)
sethue("white")
setline(.8)
for i in 1:5
    x = rand(-300:300)
    y = rand(-10:50)
    line(Point(x,y), Point(x+50,y))
    strokepath()
end

# Drawing Ball
origin()

setopacity(1)
sethue(RGB(236/255,64/255,122/255))
circle(-150, 100, 20, :fill)

finish()
preview()
