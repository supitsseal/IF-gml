minX = (x - enemySight)
maxX = (x + enemySight)
minY = (y - enemySight)
maxY = (y + enemySight)

differenceX = (maxX - minX)
differenceY = (maxY - minY)

xx = random(differenceX)
yy = random(differenceY)

xx += minX
yy += minY

