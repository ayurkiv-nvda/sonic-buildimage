#!/bin/bash
echo '## Cleaning and extracting build artifacts'

tar xzf /src/sonic_src_cov.tar.gz -C /sonic

echo '## Finding ALL coverage data and generating .gcov files'
find /sonic/src -name '*.gcda' | while read gcda_file; do
    obj_dir=$(dirname $gcda_file)
    base_name=$(basename $gcda_file)

    cd $obj_dir

    source_file=${base_name%.gcda}
    gcov --branch-probabilities --demangled-names $source_file
done

echo '## Running gcovr to create the final report'
gcovr \
  --gcov-use-existing-files \
  -r /sonic/src \
  --json-pretty -o /sonic/full-report.json \
  /sonic/src \
  --exclude-directories '.*sonic-sairedis/meta.*' \
  --exclude-directories '.*sonic-sairedis/SAI.*' \
  --exclude-directories '.*sonic-swss-common.*'

echo '## Final report is at /sonic/full-report.json'

