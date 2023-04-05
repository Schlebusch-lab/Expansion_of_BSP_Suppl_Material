
## Command lines to plot the interactive plots

Folder="01-Maps"
alias bokeh="python2 scripts/bokeh_interactive_map.py"

# Map_AfricanNeo
title="Geographical locations of worldwide populations"
	add_info="Figure showing geographical locations all the groups included in the AfricanNeo dataset."
	for DB in AfricanNeo_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.4a_Map -t "$title" -a "$add_info"; done
	add_info="Figure showing geographical locations all the populations included in the AfricanNeo dataset."
	for DB in AfricanNeo_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.4b_Map -t "$title" -a "$add_info"; done

# Map_Only-African
title="Geographical locations of sub-Saharan African populations"
	add_info="Figure showing geographical locations all the groups included in the Only-African dataset."
	for DB in Only-African_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5a_Map -t "$title" -a "$add_info"; done
	add_info="Figure showing geographical locations all the populations included in the Only-African dataset."
	for DB in Only-African_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5c_Map -t "$title" -a "$add_info"; done

# Map_Only-BSP
title="Geographical locations of Bantu-speaking populations"
	add_info="Figure showing geographical locations all the groups included in the Only-BSP dataset."
	for DB in Only-BSP_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5b_Map -t "$title" -a "$add_info"; done
	add_info="Figure showing geographical locations all the populations included in the Only-BSP dataset."
	for DB in Only-BSP_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5d_Map -t "$title" -a "$add_info"; done


Folder="02-PCA"
alias bokeh="python2 scripts/bokeh_pca_plot_PC1toPC10.py"

# Fig.S_2.2_PCA_Only-BSP
title="PCA plot for only studied Bantu-speaking groups"
	add_info="PCA results of groups included in the Only-BSP dataset (2,108 Bantu-speaking individuals)."
	for DB in Only-BSP_Groups; do bokeh -i Tables/PCA_Only-BSP_DB.evec -o ${Folder}/Fig.S_2.2_PCA_${DB} -t "$title" -a "$add_info" -w 2300 -p Patterns/${DB}_df.csv; done
title="PCA plot for only studied Bantu-speaking populations"
	add_info="PCA results of populations included in the Only-BSP dataset (2,108 Bantu-speaking individuals)."
	for DB in Only-BSP_Populations; do bokeh -i Tables/PCA_Only-BSP_DB.evec -o ${Folder}/Fig.S_2.2_PCA_${DB} -t "$title" -a "$add_info" -w 2300 -p Patterns/${DB}_df.csv; done

# Fig.S_2.3_PCA_SSA
title="PCA plot for selected sub-Saharan African groups"
	add_info="PCA results of selected sub-Saharan African populations that were included in the AfricanNeo dataset."
	for DB in Selected_SSAfrican_Groups; do bokeh -i Tables/PCA_Selected_SSAfrican_DB.evec -o ${Folder}/Fig.S_2.3_PCA_SSA_Groups -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done
title="PCA plot for selected sub-Saharan African populations"
	add_info="PCA results of selected sub-Saharan African populations that were included in the AfricanNeo dataset."
	for DB in Selected_SSAfrican_Populations; do bokeh -i Tables/PCA_Selected_SSAfrican_DB.evec -o ${Folder}/Fig.S_2.3_PCA_SSA_Populations -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done

# Fig.S_2.6_PCA_AfricanNeo
title="PCA plot for all the groups included in the AfricanNeo dataset"
	add_info="PCA of worldwide groups included in the AfricanNeo dataset (4,950 individuals from 124 populations)."
	for DB in AfricanNeo_Groups; do bokeh -i Tables/PCA_AfricanNeo_DB.evec -o ${Folder}/Fig.S_2.6_PCA_${DB} -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done
title="PCA plot for all the populations included in the AfricanNeo dataset"
	add_info="PCA of worldwide populations included in the AfricanNeo dataset (4,950 individuals from 124 populations)."
	for DB in AfricanNeo_Populations; do bokeh -i Tables/PCA_AfricanNeo_DB.evec -o ${Folder}/Fig.S_2.6_PCA_${DB} -t "$title" -a "$add_info" -p Patterns/${DB}_df.csv; done





