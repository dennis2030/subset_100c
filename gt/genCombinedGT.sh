filterList=("origin" "nashville" "1977" "gotham" "hudson" "kelvin" "valencia" "brannan" "lofi" "sierra" "apollo" "amaro" "inkwell" "mayfair" "rise" "willow" "walden" "xproII" "toaster")
touch origin_18filters_100c.txt
for filter in ${filterList[@]}
do
    cat ${filter}_val_100c.txt >> origin_18filters_100c.txt
done
