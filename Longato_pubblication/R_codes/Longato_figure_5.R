setwd("~/Desktop/github/Rheuma")

mymatrix_AR<- matrix(c(9, 142, 64, 91), 2, 2)
mymatrix_AR
chisq.test(mymatrix_AR)

colnames(mymatrix_AR)<- c("Biologics", "DMARDs")
rownames(mymatrix_AR)<- c("Evento", "No Evento")
mymatrix_AR

mymatrix_PSA<- matrix(c(6, 118, 51, 98), 2, 2)
mymatrix_PSA
chisq.test(mymatrix_PSA)

colnames(mymatrix_PSA)<- c("Biologics", "DMARDs")
rownames(mymatrix_PSA)<- c("Evento", "No Evento")

mymatrix_PSA


par(mfrow = c(1, 2))

barplot(mymatrix_AR, col = c("red", "green4"), beside = TRUE, xlim=c(0, 5), width= 0.5, ylim = c(0, 200), cex.axis = 0.8, cex.names = 0.8)
legend("topright", bty = "n", legend = c("CVD event", "no CVD event"), fill = c("red", "green4"), cex= 0.6)
text(1.25, 150, "*")
title(main = "Cardiovascular events in RA", cex.main = 0.6, xlab = "    * = p < 0.000001, biologics versus DMARDs", cex.lab = 0.5)

barplot(mymatrix_PSA, col = c("red", "green4"), beside = TRUE, xlim=c(0, 5), width= 0.5, ylim = c(0, 160), cex.axis = 0.8, cex.names = 0.8)
legend("topright", bty = "n", legend = c("CVD event", "no CVD event"), fill = c("red", "green4"), cex= 0.6)
text(1.25, 125, "*")
title(main = "Cardiovascular events in SpA", cex.main = 0.6)




dev.copy(png, "biol_dmard_AR_and_SpA.png")
dev.off()

