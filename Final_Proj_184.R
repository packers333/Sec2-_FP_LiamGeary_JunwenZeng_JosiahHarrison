install.packages("readr")
library(readr)


data <- read_csv("/Users/junwen/Desktop/Stat\ 184/world-education-data.csv")
View(education)

install.packages("dplyr")
library(dplyr)




summarized_data <- education %>%
  group_by(country) %>%
  summarize(
    gov_exp_pct_gdp = mean(gov_exp_pct_gdp, na.rm = TRUE),
    pri_comp_rate_pct = mean(pri_comp_rate_pct, na.rm = TRUE),
    lit_rate_adult_pct = mean(lit_rate_adult_pct, na.rm = TRUE),
    pupil_teacher_primary = mean(pupil_teacher_primary, na.rm = TRUE),
    pupil_teacher_secondary = mean(pupil_teacher_secondary, na.rm = TRUE),
    school_enrol_primary_pct = mean(school_enrol_primary_pct, na.rm = TRUE)
  )
