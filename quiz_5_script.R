library(tidyverse)
my.data <- read_csv("reg_quiz2_data.csv")
library(apaTables)
apa.cor.table(my.data, filename = "table1.doc", table.number=1)

block1 <- lm(aSuc~selfEsteem, data=my.data)
block2 <- lm(aSuc~selfEsteem + PAS, data=my.data)
apa.reg.table(block1,block2, filename = "table2.doc", table.number=2)

block3 <- lm(aSuc~selfEsteem, data=my.data)
block4 <- lm(aSuc~selfEsteem + NAS, data=my.data)
apa.reg.table(block3,block4, filename = "table3.doc", table.number=3)

block5 <- lm(aSuc~NAS + PAS, data=my.data)
block6 <- lm(aSuc~selfEsteem + NAS + PAS, data=my.data)
apa.reg.table(block5,block6, filename = "table4.doc", table.number=4)

