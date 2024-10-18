

# importar datos en csv  --------------------------------------------------

datos <- read.csv(file = "LA MOLINA 2014 POTATO WUE (FB) - fb.csv",
                  header = TRUE, sep = ",")

datos


# importar datos en tsv ---------------------------------------------------

datos <- read.delim("LA MOLINA 2014 POTATO WUE (FB) - fb.tsv"
                    , header = TRUE, sep = "\t")
datos

# importar datos en exel  -------------------------------------------------

library(readxl)
datos <- read_excel("LA MOLINA 2014 POTATO WUE (FB) (1).xlsx"
                    , sheet = 1)

datos
 
datos <- read_excel("LA MOLINA 2014 POTATO WUE (FB) (1).xlsx", sheet = "fb")

datos

library(openxlsx)

dtxl <- openxlsx::read.xlsx("LA MOLINA 2014 POTATO WUE (FB) (1).xlsx",
                            sheet = "fb")

# r studio import  --------------------------------------------------------

library(readxl)
LA_MOLINA_2014_POTATO_WUE_FB_1_ <- read_excel("LA MOLINA 2014 POTATO WUE (FB) (1).xlsx", 
                                              sheet = "fb")
View(LA_MOLINA_2014_POTATO_WUE_FB_1_)


# google sheets -----------------------------------------------------------

library(googlesheets4) 
url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"
gs <- as_sheets_id(url)
fb <- range_read(gs, sheet = "fb")


paste



