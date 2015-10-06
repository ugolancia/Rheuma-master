setwd("~/Desktop/github/Rheuma")

mymatrix<- matrix(c(15, 260, 115, 189), 2, 2)
mymatrix
chisq.test(mymatrix)

colnames(mymatrix)<- c("Biologics", "DMARDs")
rownames(mymatrix)<- c("Evento", "No Evento")

mymatrix
barplot(mymatrix, col = c("blue", "orange"), beside = TRUE, xlim=c(0, 5), width= 0.5, ylim = c(0, 300), cex.axis = 0.8, cex.names = 0.8)

#let's do it stacked
#barplot(mymatrix, col = c("blue", "orange"), xlim=c(0, 5), width= 0.5, ylim = c(0, 300))

legend("topright", bty = "n", legend = c("CVD event", "no CVD event"), fill = c("blue", "orange"), cex= 0.8)
text(1.25, 275, "*")
title(main = "Total cardiovascular events divided according to the therapy", cex.main = 0.8, xlab = "* = p < 0.000001, CV events with biologics versus DMARDs", cex.lab = 0.7)

dev.copy(jpeg, "biol_dmard.jpg")
dev.off()
