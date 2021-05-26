library(abind)
library(halftoner)
library(imager)

get_halftone <- function(path) {
    img <- load.image(path)
    if (length(dim(img)) == 4) {
        img <- adrop(as.array(img), drop = 3)
    }
    ht_img <- halftone(img, deg = 270, x.samp = 60, y.samp = 80)
    plot(ht_img)
}

get_halftone(file.choose())
