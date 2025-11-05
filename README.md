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


#### Labeling:
- ~~Color change: DymA should be purple (RGB: 173, 7, 27)~~
- One version with all species names, high-res — for Supplemental
- One version without names, condensed view — for main figure
- Output formats:
- PDF (for high-res, editable)
- TIFF (300 DPI) (if needed for journals)
- BphP - 5, 190, 120. #05BE78
- AlgB - 192, 96, 0. #C06000
- DimA - 173, 7, 227.  #AD07E3
- AlgW - 255, 153, 28. #FF991C

## RNA-Seq Visuals (Light/Dark vs. DymA mutant)
- /Users/jonathanwinkelman/Trestle_long-term-storage/Mukherjee_lab/dimA_RNA_seq_2025/rnaseq_prokaryotes
#### Volcano plots:
	- ./results/analysis/volcano_pval_0.05_FC_2
	- Wild type: dark vs. far-red
 	- ΔdimA: light vs. dark
	- Use matching axes and highlight colors
	- Avoid red/blue confusion — test black/gray/mustard palette
		- Make the red dots black ~18 min
		- Keep blue as blue or try mustard color rgb(255,190,15) #ffbe0f

- Send examples on Slack
#### PCA plot:
	- ./results/analysis/PCA_plot.pdf
	- WT dark and FR and ΔdimA dark and FR. 
		- So, if we have triplicates for each we should have 12 dots on the PCA plot.
	- For PCA plot: 
		- WT dark - Dark grey from volcano
		- dimA dark- dark purple same as Venn 
		- WT light - mustard yellow from volcano, rgb(255,190,15) #ffbe0f
		- dimA light- purple of dimA from phylo tree,  - 173, 7, 227.  #AD07E3
		
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


