# In R, load the image using the 'png' package
library(png)
img <- readPNG("most_watched_genres.png")
grid::grid.raster(img)  # Display the image

