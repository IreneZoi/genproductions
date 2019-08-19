masses=( 5000 5500 6000 6500 7000 7500 8000)
sample=BulkGraviton_WW_inclu_narrow_M

postfix=(_run_card.dat _customizecards.dat _proc_card.dat _extramodels.dat)

echo ${masses[*]}

for mass in ${masses[*]}; do
    echo generating cards for M = $mass GeV

    mkdir ${sample}${mass}

    for i in {0..3}; do
        sed "s/<MASS>/${mass}/g" ${sample}/${sample}${postfix[$i]} > ${sample}$mass/${sample}$mass${postfix[$i]}
    done
done