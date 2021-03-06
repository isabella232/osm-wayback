echo "" >&2
echo "" >&2
echo "===================== Running ${1} =====================" >&2
echo "Building Index" >&2
../../build/build_tag_lookup ../INDEXES/$1_INDEX ../history-pbf/${1}.osh.pbf

echo "" >&2
echo "Adding Tags" >&2
cat ../geojson/${1}.geojsonl | ../../build/add_tags ../INDEXES/$1_INDEX > ../history-geojson/${1}-history.geojson
echo "---------------------- DONE ----------------------" >&2
