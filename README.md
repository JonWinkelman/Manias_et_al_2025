# Roadmap for bioinformatic data in DimA manuscript 2025
## Fig 1D,E. RNAseq volcano plots and venn diagrams  
### RNAseq
- pipeline for running RNAseq   
  `dimA_RNA_seq_2025/rnaseq_prokaryotes`  
  https://github.com/trestle-biosciences/rnaseq_prokaryotes.git    
- pipeline can be run here:    
 `dimA_RNA_seq_2025/rnaseq_prokaryotes/run_rnaseq_prokaryotes.ipynb`   
- runs fastQC, multiQC, trimgalore, bowtie2, subread FeatureCounts   
### DEseq2    
`dimA_RNA_seq_2025/multiple_comparisons.R`   
### Volcano plots and venn diagrams   
- pipeline can be run here   
  `dimA_RNA_seq_2025/rnaseq_prokaryotes/volcano_venn_diagrams.ipynb`    
### Results   
`results/analysis/`    
<img src="images/Fig2D-E.png" width="400">  

## Fig 4A. Annotated species tree 
- Run `reciprocal_blast.ipynb` to generate reciprocal blast best hits  
- with DimA, clin vs environmental, and Genera of interest mapped ot it in itol  
- Add new species that have putative ortholog to GCF_003851985.1_WP_124309315.1, the P. chloraphis rBlast hit    
<img src="images/Fig4A.png" width=500>

#### PCA plot:
- Run `dimA_RNA_seq_2025/rnaseq_prokaryotes/PCA.ipynb`
  THen
  `dimA_RNA_seq_2025/rnaseq_prokaryotes/PCA_analysis.R`
to generate PCA plot.  
`results/analysis/PCA_plot.pdf`     
<img src="images/FigS3.png" width=500>   
		


