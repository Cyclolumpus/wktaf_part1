
library(icesTAF)
?icesTAF

taf.skeleton("example-1")

icesTAF::dir.tree()

data(trees)

draft.data(
  data.files = "trees.csv",
  data.scripts = NULL,
  originator = "Ryan, T. A., Joiner, B. L. and Ryan, B. F. (1976) The Minitab Student Handbook. Duxbury Press.",
  title = "Diameter, Height and Volume for Black Cherry Trees",
  file = TRUE,
  append = FALSE # create a new DATA.bib
)

write.taf(trees, dir = "boot/initial/data")

data(trees)
data(cars)

# make the directory we want to write to
mkdir("boot/initial/data/my-collection")

# save files there
write.taf(trees, dir = "boot/initial/data/my-collection")
write.taf(cars, dir = "boot/initial/data/my-collection")

draft.data(
  data.files = "my-collection",
  data.scripts = NULL,
  originator = "R datasets package",
  title = "Collection of R data",
  source = "folder",
  file = TRUE,
  append = TRUE # add on to existing DATA.bib
)
