
FOLDER_1="/afs/cern.ch/user/e/eberry/work/LQANA_2011/rootNtupleAnalyzerV2/pdf_ttbar_thesisEdit/"
FOLDER_2="/home/eberry/Code/Thesis/berry/tex/analysis/backgrounds/fig/"

FILES=(
    sT_PAS_emujj.pdf
    Mej_selected_avg_PAS_emujj.pdf
)

for file in ${FILES[*]}
do
    path_1="${FOLDER_1}/$file"
    path_2="${FOLDER_2}/$file"
    command="cp ${path_1} ${path_2}"
    echo $file
    eval `echo $command`
done
