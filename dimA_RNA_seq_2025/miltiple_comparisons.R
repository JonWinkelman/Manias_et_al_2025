library(DESeq2)

# Define directories
analysis_dir <- file.path("./results/featureCounts/")
output_dir <- file.path("./results/deseq2_b")
if (!file.exists(output_dir)) {
  dir.create(output_dir)
}

# Define file paths
count_fp <- file.path(analysis_dir, "merged_raw_counts.csv")
samplesheet_fp <- file.path("assets/sample_info.csv")
contrasts_fp <- file.path("assets/contrasts_manual.csv")

# Load the data
counts <- read.csv(count_fp, row.names = 1)
samplesheet <- read.csv(samplesheet_fp, row.names = 1)

# Ensure 'group' is a factor
samplesheet$group <- factor(samplesheet$group)

# Create the DESeq2 dataset and run analysis
dds <- DESeqDataSetFromMatrix(countData = counts, colData = samplesheet, design = ~ group)
dds <- DESeq(dds)
norm_counts <- counts(dds, normalized = TRUE)

# Load the contrast file
contrast_list <- read.csv(contrasts_fp)

# Loop over the contrasts and generate results
for (i in 1:nrow(contrast_list)) {
  # Get variable, numerator, and denominator from contrast file
  variable <- contrast_list$variable[i]
  numerator <- contrast_list$up[i]
  denominator <- contrast_list$reference[i]
  
  # Perform the comparison
  res <- results(dds, contrast = c(variable, numerator, denominator))
  
  # Calculate mean reads for numerator and denominator groups
  mean_numerator <- rowMeans(norm_counts[, samplesheet$group == numerator, drop = FALSE])
  mean_denominator <- rowMeans(norm_counts[, samplesheet$group == denominator, drop = FALSE])
  res$mean_numerator <- mean_numerator
  res$mean_denominator <- mean_denominator
  
  # Save the results with proper file naming
  output_fp <- file.path(output_dir, paste0(numerator, "_vs_", denominator, ".csv"))
  write.csv(as.data.frame(res), output_fp)
  
  # Log progress
  cat("Saved results for:", numerator, "vs", denominator, "\n")
}

