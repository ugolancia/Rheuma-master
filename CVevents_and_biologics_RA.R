setwd("~/Desktop/github/Rheuma")

mymatrix_AR<- matrix(c(9, 142, 64, 91), 2, 2)
mymatrix_AR
chisq.test(mymatrix_AR)

colnames(mymatrix_AR)<- c("Biologics", "DMARDs")
rownames(mymatrix_AR)<- c("Evento", "No Evento")

mymatrix_AR
barplot(mymatrix_AR, col = c("red", "green4"), beside = TRUE, xlim=c(0, 5), width= 0.5, ylim = c(0, 200), cex.axis = 0.8, cex.names = 0.8)

legend("topright", bty = "n", legend = c("CVD event", "no CVD event"), fill = c("red", "green4"), cex= 0.8)
text(1.25, 160, "*")
title(main = "Cardiovascular events divided according to the therapy in RA", cex.main = 0.8, xlab = "* = p < 0.000001, CV events with biologics versus DMARDs in RA", cex.lab = 0.7)

dev.copy(jpeg, "biol_dmard_AR.jpg")
dev.off()

