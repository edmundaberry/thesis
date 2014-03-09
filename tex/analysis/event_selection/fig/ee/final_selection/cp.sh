
FOLDER_1="/afs/cern.ch/user/e/eberry/work/LQANA_2011/rootNtupleAnalyzerV2/pdf_eejj_WZSherpa_scaled_finalOnly_thesisEdit/"
FOLDER_2="/home/eberry/Code/Thesis/berry/tex/analysis/event_selection/fig/ee/final_selection/"

FILES=(
    sT_eejj_LQ400_eejj_WZSherpa.pdf
    Mej_selected_avg_LQ400_eejj_WZSherpa.pdf
    Mej_minmax_LQ400_eejj_WZSherpa.pdf
    sT_eejj_LQ600_eejj_WZSherpa.pdf
    Mej_selected_avg_LQ600_eejj_WZSherpa.pdf    
    Mej_minmax_LQ600_eejj_WZSherpa.pdf
)

for file in ${FILES[*]}
do
    path_1="${FOLDER_1}/$file"
    path_2="${FOLDER_2}/$file"
    command="cp ${path_1} ${path_2}"
    echo $file
    eval `echo $command`
done



