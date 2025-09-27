
install.packages("tidyverse")
library("tidyverse")
dt <- read.csv("/cloud/project/heights.csv")
dt <- as_tibble(dt)
dt

## create a tibble
tibble( 
  x = 1:3,
  y = c("a","b","c"),
  c = c("f","f","e")
  )
tibble

dt %>%
  print(n=10, width=Inf)

dt

# earn column extraction from the tibble
dt[["earn"]]

dt %>% .$age

# annoying column
annoying <- tibble(
  "1" = 1:10,
  "2" = `1` * 2 + rnorm(length('1'))
)
annoying

annoying$`3` <- annoying$`1`/annoying$`2`

library(readxl)
dt <- read_excel("/cloud/project/datasets.xlsx")

dt

# read the sas data files
library(haven)

test_Data <- haven::read_sas(data_file = "/cloud/project/test_data.sas7bdat",
                             catalog_file = "/cloud/project/test_formats.sas7bcat")
test_Data

# load the nyc dataset in the tidyverse
nyts <- haven::read_sas(data_file = "cloud/project/nyts2018.sas7bdat",
                 catalog_file = "cloud/project/formats.sas7bdat") 

nyts %>% head()


