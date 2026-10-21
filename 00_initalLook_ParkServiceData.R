.rs.restartR()

lapply(c("tidyverse"),library,character.only=TRUE)

loadedNamespaces()

setwd("~/AUMaster/Fall2026/StatMachLearn/Project_StatMachLearn/")

# https://opendata.dc.gov/datasets/DCGIS::urban-forestry-street-trees/about

# Metadata leads to a data dictionary with descriptions
# https://www.arcgis.com/sharing/rest/content/items/f6c3c04113944f23a7993f2e603abaf2/info/metadata/metadata.xml?format=default&output=html

# Attribute Label: MAX_MEAN

# Attribute Definition: 

# The average vertical distance from the base of the live crown (lowest live branches) to the top of the tree, representing the average vertical extent of the foliage across a sample. 

# It indicates tree vigor, shading capability, and competition for light, with larger crowns often signifying better health. Measurements are in feet and were derived from 2020 lidar data.

# Attribute Definition Source: Department of Transportation, Urban Forestry Administration

forestry.data <- read_csv("./Urban_Forestry_Street_Trees.csv")

glimpse(forestry.data)

# There are a bunch of quantitative variables below.

forestry.data |> select(MAX_CROWN_HEIGHT) |> head()

forestry.data |> select(MIN_CROWN_BASE) |> head()

forestry.data |> select(CROWN_AREA) |> head()

forestry.data |> select(MAX_MEAN) |> head()

forestry.data |> select(DISEASE) |> unique() |> print(n=25)

forestry.data |> select(PESTS) |> unique() |> print(n=25)

forestry.data |> select(GENUS_NAME) |> unique() |> arrange(GENUS_NAME) |> print(n=86)
