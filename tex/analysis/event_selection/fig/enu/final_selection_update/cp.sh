
FOLDER_1="/afs/cern.ch/user/e/eberry/work/LQANA_2011/rootNtupleAnalyzerV2/pdf_enujj_WZSherpa_scaled_MT120_NewRereco_finalOnly_thesisEdit/"
FOLDER_2="/home/eberry/Code/Thesis/berry/tex/analysis/event_selection/fig/enu/final_selection_update/"

FILES=(
    sT_LQ400_enujj_WZSherpa_MT120_NewRereco.pdf
    Mej_LQ400_enujj_WZSherpa_MT120_NewRereco.pdf
    sT_LQ600_enujj_WZSherpa_MT120_NewRereco.pdf
    Mej_LQ600_enujj_WZSherpa_MT120_NewRereco.pdf
)

for file in ${FILES[*]}
do
    path_1="${FOLDER_1}/$file"
    path_2="${FOLDER_2}/$file"
    command="cp ${path_1} ${path_2}"
    echo $file
    eval `echo $command`
done






