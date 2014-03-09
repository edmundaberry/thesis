
FOLDER_1="/afs/cern.ch/user/e/eberry/work/LQANA_2011/rootNtupleAnalyzerV2/pdf_enujj_TTBarNorm_5Jets_WZSherpaScaled_thesisEdit/"
FOLDER_2="/home/eberry/Code/Thesis/berry/tex/analysis/backgrounds/fig/"

FILES=(
    minMETPt1stEle_PAS_enujj_TTBarNorm_5Jets_WZSherpaScaled.pdf
    MTenu_PAS_enujj_TTBarNorm_5Jets_WZSherpaScaled.pdf
    Pt1stJet_PAS_enujj_TTBarNorm_5Jets_WZSherpaScaled.pdf
    Pt2ndJet_PAS_enujj_TTBarNorm_5Jets_WZSherpaScaled.pdf
    sT_PAS_enujj_TTBarNorm_5Jets_WZSherpaScaled.pdf
    Mej_PAS_enujj_TTBarNorm_5Jets_WZSherpaScaled.pdf
)

for file in ${FILES[*]}
do
    path_1="${FOLDER_1}/$file"
    path_2="${FOLDER_2}/$file"
    command="cp ${path_1} ${path_2}"
    echo $file
    eval `echo $command`
done
