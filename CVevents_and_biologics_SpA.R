setwd("~/Desktop/github/Rheuma")

mymatrix_PSA<- matrix(c(6, 118, 51, 98), 2, 2)
mymatrix_PSA
chisq.test(mymatrix_PSA)

colnames(mymatrix_PSA)<- c("Biologics", "DMARDs")
rownames(mymatrix_PSA)<- c("Evento", "No Evento")

mymatrix_PSA
barplot(mymatrix_PSA, col = c("red", "green4"), beside = TRUE, xlim=c(0, 5), width= 0.5, ylim = c(0, 160), cex.axis = 0.8, cex.names = 0.8)

legend("topright", bty = "n", legend = c("CVD event", "no CVD event"), fill = c("red", "green4"), cex= 0.8)
text(1.25, 130, "*")
title(main = "Cardiovascular events divided according to the therapy in SpA", cex.main = 0.8, xlab = "* = p < 0.000001, CV events with biologics versus DMARDs in SpA", cex.lab = 0.7)

dev.copy(jpeg, "biol_dmard_PsA.jpg")
dev.off()

