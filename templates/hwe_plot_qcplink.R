#!/usr/bin/env Rscript
#Load HWE P-value file and generate frequency_distribution
b.frq <- read.table("$input",header=T)
pdf("$output")
b.frq\$logP = log10(b.frq\$P)
plot(ecdf(b.frq\$logP), xlim=c(-10,0),ylim=c(0,0.80),pch=20, main="HWE P-value",xlab="logP (HWE)", ylab="Fraction of SNPs",axes=T)
