
FOLDER_1="/afs/cern.ch/user/e/eberry/work/LQANA_2011/rootNtupleAnalyzerV2/pdf_enujj_WZSherpa_scaled_thesisEdit/"
FOLDER_2="/home/eberry/Code/Thesis/berry/tex/analysis/fig/enu/preselection/"

FILES=(
    "nVertex_PAS_enujj_WZSherpa_noNSigma.pdf"
    "Pt1stEle_PAS_enujj_WZSherpa_noNSigma.pdf"
    "Eta1stEle_PAS_enujj_WZSherpa_noNSigma.pdf"
    "Pt1stJet_PAS_enujj_WZSherpa_noNSigma.pdf"
    "Eta1stJet_PAS_enujj_WZSherpa_noNSigma.pdf"
    "Pt2ndJet_PAS_enujj_WZSherpa_noNSigma.pdf"
    "Eta2ndJet_PAS_enujj_WZSherpa_noNSigma.pdf"
    "MET_PAS_enujj_WZSherpa_noNSigma.pdf"
    "METPhi_PAS_enujj_WZSherpa_noNSigma.pdf"
    "mDPhi1stJetMET_PAS_enujj_WZSherpa_noNSigma.pdf"
    "mDPhi2ndJetMET_PAS_enujj_WZSherpa_noNSigma.pdf" 
    "mDPhi1stEleMET_PAS_enujj_WZSherpa_noNSigma.pdf"
    "minDR_EleJet_PAS_enujj_WZSherpa_noNSigma.pdf"
    "MTenu_PAS_enujj_WZSherpa_noNSigma.pdf"
    "sT_PAS_enujj_WZSherpa_noNSigma.pdf"
    "Mej_PAS_enujj_WZSherpa_noNSigma.pdf"
    "MTjnu_PAS_enujj_WZSherpa_noNSigma.pdf"
)

for file in ${FILES[*]}
do
    path_1="${FOLDER_1}/$file"
    path_2="${FOLDER_2}/$file"
    command="cp ${path_1} ${path_2}"
    echo $file
    eval `echo $command`
done
