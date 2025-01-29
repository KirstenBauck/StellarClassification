library(tidyverse)
library(dplyr)

# Read in the original data
StellarObjs = read.csv("data-raw/star_classification.csv")

# Remove extreme outliers
outliers = boxplot.stats(StellarObjs$u[StellarObjs$class == "STAR"])$out
removed = StellarObjs[StellarObjs$u %in% outliers & StellarObjs$class == "STAR", ][9, ]
StellarObjs = StellarObjs[-79544, ]

# Covert Modified Julian Date to a date
StellarObjs = StellarObjs %>% mutate(date = as.Date(MJD, origin = "1858-11-17"))

# Remove unnecessary columns
StellarObjs = StellarObjs %>% select(-c(obj_ID, run_ID, rerun_ID, cam_col, spec_obj_ID,
                            field_ID, plate, fiber_ID, MJD))

# Rename columns
StellarObjs = StellarObjs %>% rename(
  right_ascension_angle = alpha,
  declination_angle = delta,
  ultraviolet_filter = u,
  green_filter = g,
  red_filter = r,
  near_infrared_filter = i,
  infrared_filter = z
)

# Move class column to the front
StellarObjs <- select(StellarObjs, class, everything())

# Save the dataframe to the data/ directory
usethis::use_data(StellarObjs)
