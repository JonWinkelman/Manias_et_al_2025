library(DESeq2)
  
  
counts <- read.csv("results/PCA_analysis/count_data.csv", row.names = 1)
coldata <- read.csv("results/PCA_analysis/col_data.csv", row.names = 1)
all(colnames(counts) == rownames(coldata))
dds <- DESeqDataSetFromMatrix(countData = counts,
                              colData = coldata,
                              design = ~ condition)

vsd <- vst(dds)    # For PCA
pdf('./results/analysis/PCA_plot.pdf').# Start writing to PDF
plotPCA(vsd, intgroup = "condition")  # Plot is sent to PDF, not screen
dev.off()                          # Close file, save the plot