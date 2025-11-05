 
## **A light-induced microprotein triggers regulated intramembrane proteolysis to promote photo-sensing in a pathogenic bacterium**
##### Manias et al., 2025 

##### Create conda environment
`conda env create -f environment.yml`  
`conda activate mukherjee`  
### RNAseq  
##### Fig2D,E  
- raw RNAseq data here:
  
- pipeline for running RNAseq   
  `dimA_RNA_seq_2025/rnaseq_prokaryotes`
- pipeline can be run here:    
 `dimA_RNA_seq_2025/rnaseq_prokaryotes/run_rnaseq_prokaryotes.ipynb`
	- This notebook can't be run by users who do not have read/write access to AWS S3 buckets within.     
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
1. Run `reciprocal_blast.ipynb`
   - download proteomes from NCBI datasets
   - generate reciprocal blast best hits
3. Run `annotated_Pseudomonas_tree.ipynb`
   - generate a species tree with jw_utils/make_bac120_tree  (similar to Parks et al 2018)
     - hmmsearch and hmmalign to make 120 concatenated aligned proteins
     - Run fasttree on concatenated alignme   bac120 method.   
   - make datasets files for annotating species tree in iTOL
        
<img src="images/Fig4A.png" width=500>   

#### PCA plot:
- from DEseq2 output above:  
- Run `dimA_RNA_seq_2025/rnaseq_prokaryotes/PCA.ipynb`   
  Then   
  `dimA_RNA_seq_2025/rnaseq_prokaryotes/PCA_analysis.R`   
to generate PCA plot.   
`results/analysis/PCA_plot.pdf`      
<img src="images/FigS3.png" width=500>   
		


