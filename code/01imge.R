
# git to make image magick make a tiled "montage"
setwd("~/git_repos/tiles/tiles/")


ff <- dir(pattern="*.svg.png")
n <- 100
#wgt <- rev(rep(c(5:1)^3, each=2))
wgt <- rep(1, 10)
samp <- sample(ff, size = n, replace = T, prob = wgt)
ffString <- paste(samp, collapse=" ")
oString <- "out.png"
mString <- paste0("montage ", ffString, " -geometry +0+0 -border 0 ", oString)
write(mString, "montage.sh")
