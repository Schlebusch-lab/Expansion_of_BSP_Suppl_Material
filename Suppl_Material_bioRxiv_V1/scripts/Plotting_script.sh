
## Command lines to plot the interactive plots

Folder="01-Maps"
alias bokeh="python2 scripts/bokeh_interactive_map.py"

title="Geographical locations of worldwide populations"

add_info="Figure showing geographical locations all the groups included in the AfricanNeo dataset."
for DB in AfricanNeo_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.4a_Map -t "$title" -a "$add_info"; done

add_info="Figure showing geographical locations all the populations included in the AfricanNeo dataset."
for DB in AfricanNeo_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.4b_Map -t "$title" -a "$add_info"; done


title="Geographical locations of sub-Saharan African populations"

add_info="Figure showing geographical locations all the groups included in the Only-African dataset."
for DB in Only-African_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5a_Map -t "$title" -a "$add_info"; done

add_info="Figure showing geographical locations all the populations included in the Only-African dataset."
for DB in Only-African_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5c_Map -t "$title" -a "$add_info"; done


title="Geographical locations of Bantu-speaking populations"

add_info="Figure showing geographical locations all the groups included in the Only-BSP dataset."
for DB in Only-BSP_Groups; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5b_Map -t "$title" -a "$add_info"; done

add_info="Figure showing geographical locations all the populations included in the Only-BSP dataset."
for DB in Only-BSP_Populations; do bokeh -i Patterns/Map_${DB}_df.csv -o ${Folder}/Fig.S_1.5d_Map -t "$title" -a "$add_info"; done



