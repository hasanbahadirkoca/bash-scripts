a="8"; i=1; for file in $(ls ${a}-*.jpg | sort -V); do mv "$file" "${a}-$i.jpg"; i=$((i + 1)); done
