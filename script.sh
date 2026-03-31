#!/bin/bash

diretories=(
    '01_limgrave'
    '02_stormveil_castle'
    '03_liurnia_of_the_lakes'
    '04_academy_of_raya_lucaria'
    '05_siofra_river'
    '06_ainsel_river'
    '07_nokron_eternal_city'
    '08_caelid'
    '09_deeproot_depths'
    '10_altus_plateau'
    '11_volcano_manor'
    '12_leyndell_royal_capital'
    '13_mountaintops_of_the_giants'
    '14_crumbling_farum_azula'
    '15_miquellas_haligtree'
)

# Create directories if they don't exist
for dir in "${diretories[@]}"; do
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"

        touch "$dir/route.md"
        touch "$dir/inventory.md"
        touch "$dir/bosses.md"
        touch "$dir/npcs.md"
        touch "$dir/README.md"
    fi
done
