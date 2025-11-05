# **A light-induced microprotein triggers regulated intramembrane proteolysis to promote photo-sensing in a pathogenic bacterium**  
### *Manias et al., 2025*  

---

## Environment Setup  

**Create and activate the conda environment:**  

```
conda env create -f environment.yml
conda activate mukherjee
```

> Analysis performed on Apple M4 Max (36 GB memory) running macOS Sequoia 15.5.

---

## RNA-seq Analysis  

**Primary pipeline:**  
`dimA_RNA_seq_2025/rnaseq_prokaryotes/run_rnaseq_prokaryotes.ipynb`

> ⚠️ This notebook requires read/write access to internal AWS S3 buckets and cannot be executed by external users.
> ⚠️ Raw data available in the SRA and the Nextflow pipeline here describes all of the tools used

**Implements:**  
- `FastQC`, `MultiQC`, `Trim Galore`  
- `Bowtie2` alignment  
- `Subread FeatureCounts` quantification  

**Associated scripts:**  
- `dimA_RNA_seq_2025/rnaseq_prokaryotes/` – main RNA-seq pipeline  
- `dimA_RNA_seq_2025/multiple_comparisons.R` – differential expression (DESeq2)  
- `dimA_RNA_seq_2025/rnaseq_prokaryotes/volcano_venn_diagrams.ipynb` – volcano plots + Venn diagrams  

**Results:**  
`results/analysis/`

<p align="center">
  <img src="images/Fig2D-E.png" width="450">
</p>

---

## Phylogenetic & Comparative Genomics  

**Fig 4A – Annotated species tree**

1. **Reciprocal BLAST search**  
   - Run `reciprocal_blast.ipynb`  
   - Downloads proteomes via NCBI datasets  
   - Generates reciprocal best-hit tables  

2. **Tree construction and annotation**  
   - Run `annotated_Pseudomonas_tree.ipynb`  
   - Builds species tree using `jw_utils/make_bac120_tree` (after Parks et al., 2018)  
     - `hmmsearch` + `hmmalign` → 120 concatenated protein alignments  
     - `FastTree` → concatenated tree  
   - Exports annotation datasets for iTOL  

<p align="center">
  <img src="images/Fig4A.png" width="500">
</p>

---

## 📊 PCA Analysis  

From DESeq2 output:  
1. Run `dimA_RNA_seq_2025/rnaseq_prokaryotes/PCA.ipynb`  
2. Then run `dimA_RNA_seq_2025/rnaseq_prokaryotes/PCA_analysis.R`  

**Output:**  
`results/analysis/PCA_plot.pdf`

<p align="center">
  <img src="images/FigS3.png" width="500">
</p>

---

##  Reproducibility & Data Availability  

This repository contains all code necessary to reproduce the analyses described in *Manias et al., 2025*.  
However, due to restricted data access, notebooks requiring AWS S3 read/write permissions cannot be executed publicly.  

All software dependencies are version-pinned via `environment.yml`.  
A Zenodo DOI will be provided upon manuscript publication for permanent archiving and citation.
