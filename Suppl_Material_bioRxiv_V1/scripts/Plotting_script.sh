
## Command lines to plot the interactive plots

Folder="01-Maps" # Interactive maps included in this folder
alias bokeh="python2 scripts/bokeh_interactive_map.py"

# Fig.S_1.4. Map_AfricanNeo_DB
title="Geographical locations of worldwide populations"
	add_info="Figure showing geographical locations all the groups included in the AfricanNeo dataset."
	for DB in AfricanNeo_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.4a_Map -t "$title" -a "$add_info"; done
	add_info="Figure showing geographical locations all the populations included in the AfricanNeo dataset."
	for DB in AfricanNeo_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.4b_Map -t "$title" -a "$add_info"; done

# Fig.S_1.5. Map_Only-African_DB
title="Geographical locations of sub-Saharan African populations"
	add_info="Figure showing geographical locations all the groups included in the Only-African dataset."
	for DB in Only-African_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5a_Map -t "$title" -a "$add_info"; done
	add_info="Figure showing geographical locations all the populations included in the Only-African dataset."
	for DB in Only-African_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5c_Map -t "$title" -a "$add_info"; done

# Fig.S_1.5. Map_Only-BSP_DB
title="Geographical locations of Bantu-speaking populations"
	add_info="Figure showing geographical locations all the groups included in the Only-BSP dataset."
	for DB in Only-BSP_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5b_Map -t "$title" -a "$add_info"; done
	add_info="Figure showing geographical locations all the populations included in the Only-BSP dataset."
	for DB in Only-BSP_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5d_Map -t "$title" -a "$add_info"; done


Folder="02-PCA" # PCA plots included in this folder
alias bokeh="python2 scripts/bokeh_pca_plot_PC1toPC10.py"

# Fig.S_2.2. PCA_Only-BSP_DB
title="PCA plot for only studied Bantu-speaking groups"
	add_info="PCA results of groups included in the Only-BSP dataset (2,108 Bantu-speaking individuals)."
	for DB in Only-BSP_Groups; do bokeh -i Tables/PCA_Only-BSP_DB.evec -o ${Folder}/Fig.S_2.2_PCA_${DB} -t "$title" -a "$add_info" -w 2300 -p Patterns/${DB}_df.csv; done
title="PCA plot for only studied Bantu-speaking populations"
	add_info="PCA results of populations included in the Only-BSP dataset (2,108 Bantu-speaking individuals)."
	for DB in Only-BSP_Populations; do bokeh -i Tables/PCA_Only-BSP_DB.evec -o ${Folder}/Fig.S_2.2_PCA_${DB} -t "$title" -a "$add_info" -w 2300 -p Patterns/${DB}_df.csv; done

# Fig.S_2.3. PCA_SSA_DB
title="PCA plot for selected sub-Saharan African groups"
	add_info="PCA results of selected sub-Saharan African populations that were included in the AfricanNeo dataset."
	for DB in Selected_SSAfrican_Groups; do bokeh -i Tables/PCA_Selected_SSAfrican_DB.evec -o ${Folder}/Fig.S_2.3_PCA_SSA_Groups -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done
title="PCA plot for selected sub-Saharan African populations"
	add_info="PCA results of selected sub-Saharan African populations that were included in the AfricanNeo dataset."
	for DB in Selected_SSAfrican_Populations; do bokeh -i Tables/PCA_Selected_SSAfrican_DB.evec -o ${Folder}/Fig.S_2.3_PCA_SSA_Populations -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done

# Fig.S_2.6. PCA_AfricanNeo_DB
title="PCA plot for all the groups included in the AfricanNeo dataset"
	add_info="PCA of worldwide groups included in the AfricanNeo dataset (4,950 individuals from 124 populations)."
	for DB in AfricanNeo_Groups; do bokeh -i Tables/PCA_AfricanNeo_DB.evec -o ${Folder}/Fig.S_2.6_PCA_${DB} -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done
title="PCA plot for all the populations included in the AfricanNeo dataset"
	add_info="PCA of worldwide populations included in the AfricanNeo dataset (4,950 individuals from 124 populations)."
	for DB in AfricanNeo_Populations; do bokeh -i Tables/PCA_AfricanNeo_DB.evec -o ${Folder}/Fig.S_2.6_PCA_${DB} -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done


Folder="02-UMAP" # UMAP and PCA-UMAP plots included in this folder
alias bokeh="python2 scripts/bokeh_umap_plot.py"

# Fig.S_2.1 UMAP_AfricanNeo_DB
title="UMAP plot for all the groups included in the AfricanNeo dataset"
	add_info="UMAP results for all the African and Eurasian groups included in the AfricanNeo dataset."
	for DB in AfricanNeo_Groups; do bokeh -i Tables/UMAP_AfricanNeo_DB_genotype.txt -o ${Folder}/Fig.S_2.1a_UMAP_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv --which_dim 2,1; done
title="UMAP plot for all the populations included in the AfricanNeo dataset"
	add_info="UMAP results for all the African and Eurasian populations included in the AfricanNeo dataset."
	for DB in AfricanNeo_Populations; do bokeh -i Tables/UMAP_AfricanNeo_DB_genotype.txt -o ${Folder}/Fig.S_2.1b_UMAP_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv --which_dim 2,1; done

# Fig.S_2.7 PCA-UMAP_AfricanNeo_DB
title="PCA-UMAP plot for all the groups included in the AfricanNeo dataset"
	add_info="PCA-UMAP results for all African and Eurasian groups included in the AfricanNeo dataset."
	for DB in AfricanNeo_Groups; do bokeh -i Tables/UMAP_AfricanNeo_DB_table.txt -o ${Folder}/Fig.S_2.7a_PCA-UMAP_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done
title="PCA-UMAP plot for all the populations included in the AfricanNeo dataset"
	add_info="PCA-UMAP results for all the African and Eurasian populations included in the AfricanNeo dataset."
	for DB in AfricanNeo_Populations; do bokeh -i Tables/UMAP_AfricanNeo_DB_table.txt -o ${Folder}/Fig.S_2.7b_PCA-UMAP_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done


Folder="02-GCAE" # GCAE plots included in this folder
alias bokeh="python2 scripts/bokeh_gcae_plot.py"

# Fig.S_2.8 GCAE_AfricanNeo_DB
title="GCAE plot for all the groups included in the AfricanNeo dataset"
	add_info="GCAE results for all the African and Eurasian groups included in the AfricanNeo dataset."
	for DB in AfricanNeo_Groups; do bokeh -i Tables/GCAE_AfricanNeo_DB_table.txt -o ${Folder}/Fig.S_2.8a_GCAE_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done
title="GCAE plot for all the populations included in the AfricanNeo dataset"
	add_info="GCAE results for all the African and Eurasian populations included in the AfricanNeo dataset."
	for DB in AfricanNeo_Populations; do bokeh -i Tables/GCAE_AfricanNeo_DB_table.txt -o ${Folder}/Fig.S_2.8b_GCAE_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done


title="GCAE plot for all the groups included in the Only-African dataset"
	add_info="GCAE results for all the African and Eurasian groups included in the Only-African dataset."
	for DB in Only-African_Groups; do bokeh -i Tables/GCAE_Only-African_DB_table.txt -o ${Folder}/Fig.S_2.8c_GCAE_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done
title="GCAE plot for all the populations included in the Only-African dataset"
	add_info="GCAE results for all the African and Eurasian populations included in the Only-African dataset."
	for DB in Only-African_Populations; do bokeh -i Tables/GCAE_Only-African_DB_table.txt -o ${Folder}/Fig.S_2.8d_GCAE_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done


Folder="05-ROH" # ROH plots included in this folder
alias bokeh="python2 scripts/bokeh_ROH_class_plot.py"

# Fig.S_5.6a ROHclass_AfricanNeo_DB
title="All categories of ROH length for the AfricanNeo dataset"
	add_info="Averages for each category of ROH length in each studied population included in the AfricanNeo dataset"
	for DB in AfricanNeo_Groups; do bokeh -i Tables/ROH_categories_AfricanNeo_DB.txt -o ${Folder}/Fig.S_5.6a_ROH_categories_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done
title="All categories of ROH length for the Only-BSP dataset"
	add_info="Averages for each category of ROH length in each studied population included in the Only-BSP dataset"
	for DB in Only-BSP_Populations; do bokeh -i Tables/ROH_categories_Only-BSP_DB.txt -o ${Folder}/Fig.S_5.6b_ROH_categories_plot -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done


