
FOLDER_1="/afs/cern.ch/user/e/eberry/scratch0/LQNOTE/ANPAS2011/notes/AN-11-492/trunk/fig/"
FOLDER_2="/home/eberry/Code/Thesis/berry/tex/analysis/backgrounds/fig/"

FILES=(
    Bar_2Jet_Pt1stEle_PAS.pdf
    End1_2Jet_Pt1stEle_PAS.pdf
    End2_2Jet_Pt1stEle_PAS.pdf
    Pt1stEle_PAS_closureTestQCD.pdf
    Me1j1_PAS_closureTestQCD.pdf
    Mee_PAS_closureTestQCD.pdf
    sT_PAS_closureTestQCD.pdf
)

for file in ${FILES[*]}
do
    path_1="${FOLDER_1}/$file"
    path_2="${FOLDER_2}/$file"
    command="cp ${path_1} ${path_2}"
    echo $file
    eval `echo $command`
done
