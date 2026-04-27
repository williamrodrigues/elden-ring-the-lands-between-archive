#!/bin/bash

# Regiões da DLC Shadow of the Erdtree
diretories=(
    '17_gravesite_plain'
    '18_belurat_tower_settlement'
    '19_castle_ensis'
    '20_scadu_altus'
    '21_shadow_keep'
    '22_rauh_base_and_ancient_ruins'
    '23_southern_shore_and_cerulean_coast'
    '24_abyssal_woods'
    '25_scadutree_view_and_hinterland'
    '26_enir_ilim'
)

# Create directories if they don't exist
for dir in "${diretories[@]}"; do
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir/assets"

        touch "$dir/route.md"
        touch "$dir/inventory.md"
        touch "$dir/bosses.md"
        touch "$dir/npcs.md"
        touch "$dir/README.md"
    fi
done