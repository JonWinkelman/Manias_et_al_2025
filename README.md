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
`results/analysis/PCA_plot.pdf`  
<img src="images/FigS3.png" width=500>  
		
#### Venn diagrams (2):
	- ./results/analysis/venn_light_repressed_WTvsDelDimA.pdf
	- ./results/analysis/venn_light_activated_WTvsDelDimA.pdf
	- Show overlap of regulons
	1.  light-upregulated (Wt vs ΔdimA)
	1.  light-downregulated (Wt vs ΔdimA)
	- Light activated 
		- WT- mustard yellow same as volcano plot, 
		- ΔdimA- purple of dimA from the phylo tree and 
	- for Light repressed 
		- WT- dark grey same as used for volcano plot,
		-  ΔdimA- a dark purple color
	- Prepare a supplemental table with DEGs, fold changes, etc.


## public RNA-Seq Visuals (Light/Dark vs. ΔdimA )	
- /Users/jonathanwinkelman/Trestle_long-term-storage/Mukherjee_lab/clinical_PA_transcriptomes/

#### Heatmaps
	- ./deseq_analysis_4/heatmaps/dimA_heatmap_forpaper.pdf
	- Focus on DimA only for the main figure 
	- Show 12 key conditions in main panel
	- Put full condition list in supplemental Already finished
	- Rotate heatmap horizontal/vertical as needed for layout
	
#### Pearson correlations light vs dark in dimA expression?
- Would it be possible to extract a Pearson correlation graph from the public transcriptome data for dimA expression under light vs dark


## Figure File Types & Documentation
- Provide both PDF + TIFF versions as needed
- Code to go on GitHub with clear structure (e.g., tree generation, heatmap, etc.)
- legends + description in methods


