
FOLDER_1="/afs/cern.ch/user/e/eberry/work/LQANA_2011/rootNtupleAnalyzerV2/pdf_eejj_WZSherpa_scaled_thesisEdit/"
FOLDER_2="/home/eberry/Code/Thesis/berry/tex/analysis/fig/ee/preselection/"


FILES=(
    "nVertex_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Pt1stEle_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Eta1stEle_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Pt2ndEle_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Eta2ndEle_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Pt1stJet_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Eta1stJet_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Pt2ndJet_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Eta2ndJet_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Mee_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Mee_70_110_Preselection_eejj_WZSherpa_noNSigma.pdf"
    "sT_PAS_eejj_WZSherpa_noNSigma.pdf"
    "Mej_selected_avg_PAS_eejj_WZSherpa_noNSigma.pdf"
)

for file in ${FILES[*]}
do
    path_1="${FOLDER_1}/$file"
    path_2="${FOLDER_2}/$file"
    command="cp ${path_1} ${path_2}"
    echo $file
    eval `echo $command`
done
