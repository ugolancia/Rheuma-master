setwd("~/Desktop/github/Rheuma")

mymatrix_SpA<- matrix(c(63, 37, 83.3, 16.7), 2, 2)
mymatrix_SpA
prop.test(mymatrix_SpA)

colnames(mymatrix_SpA)<- c("SpA", "bDMARD in SpA")
rownames(mymatrix_SpA)<- c("MALES", "FEMALES")

mymatrix_SpA
barplot(mymatrix_SpA, col = c("red", "yellowgreen"), beside = TRUE, xlim=c(0, 5), width= 0.5, ylim = c(0, 100), cex.axis = 0.8, cex.names = 0.8)

#let's do it stacked
#barplot(mymatrix, col = c("blue", "orange"), xlim=c(0, 5), width= 0.5, ylim = c(0, 100))

legend("topright", bty = "n", legend = c("MALES %", "FEMALES %"), fill = c("red", "yellowgreen"), cex= 0.8)

text(2.3, 90, "*")
title(xlab = "* = p = 0.002, proportions of males in the two groups", cex.lab = 0.7)

dev.copy(png, "longato_figure_4.png")
dev.off()