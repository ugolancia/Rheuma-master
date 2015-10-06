setwd("~/Desktop/github/Rheuma")

mymatrix_sex<- matrix(c(70, 236, 123, 150), 2, 2)
mymatrix_sex
chisq.test(mymatrix_sex)

colnames(mymatrix_sex)<- c("RA", "SpA")
rownames(mymatrix_sex)<- c("MALES", "FEMALES")

mymatrix_sex
barplot(mymatrix_sex, col = c("red", "yellowgreen"), beside = TRUE, xlim=c(0, 5), width= 0.5, ylim = c(0, 300), cex.axis = 0.8, cex.names = 0.8)

#let's do it stacked
#barplot(mymatrix, col = c("blue", "orange"), xlim=c(0, 5), width= 0.5, ylim = c(0, 300))

legend("topright", bty = "n", legend = c("MALES", "FEMALES"), fill = c("red", "yellowgreen"), cex= 0.8)

text(1.25, 260, "*")
title(main = "Sex distribution according to pathology", cex.main = 0.8, xlab = "* = p < 0.000001, association between sex and pathology", cex.lab = 0.7)

dev.copy(jpeg, "sex_path.jpg")
dev.off()