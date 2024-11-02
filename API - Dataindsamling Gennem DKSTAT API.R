# Hent via API
library(dkstat)

#samtlige tables
tables <- dst_get_tables()

# Hent via API
# Hente metadata mhp filtrering
FORV1 <- dst_meta(table = "FORV1", lang = "da")

# Konstruer liste med filtre
uheld_meta_filters <- list(
  OMRÅDE = "*",
  UHELD = "Personskade i alt",
  INDBLAND = c("Almindelig personbil", "Lastbil over 3.500 kg.", "Fodgænger"),
  ALDER = "*",
  KØN = c("Mænd", "Kvinder"),
  Tid = "*"
)

# Hente data via filtre
uheldsdata <- dst_get_data(table = "UHELDK1", query = uheld_meta_filters, lang = "da")

