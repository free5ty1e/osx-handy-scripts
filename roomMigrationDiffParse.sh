#!/bin/bash

# Clean up on exit
function finish {
  rm -f expected found
}
trap finish EXIT

# How to parse JSON
JQ="jq --sort-keys"

# Convert log to JSON format
toJson () {
  # First sed removes spaces between indices ("columns:[id, col1, col2]" becomes "columns:[id,col1,col2]")
  # Indeed, spaces are later replaced to quotes, and we don't want that (would cause parse errors: columns:[id,"col1,"col2])
  # Second sed ensures single column indices have quotes

  sed -r ':a;s#(\[[[:alnum:],]*) ([[:alnum:] ,]*\])#"\1\2"#;ta' \
    | sed -r 's/(\[[[:alnum:]]+\])/"\1"/g' \
    | sed -e 's/} ,/},/g' \
      -e 's/Column//g' \
      -e 's/Index//g' \
      -e "s/'/\"/g" -e 's/=/":/g' -e 's/ /"/g' -e 's/{/{"/g'
}

# Check arg
in="$1"
if [ "$in" == "" ]
then
    echo "Usage: $0 <dump of error message>" >&2
    echo "For example:" >&2
    echo "Usage: $0 \"java.lang.IllegalStateException: Migration failed. expected:TableInfo{name='...', columns={...}, foreignKeys=[], indices=[]} , found:TableInfo{name='...', columns={...}, foreignKeys=[], indices=[]}\"" >&2
    exit 1
fi

# Parse input: split into expected/found
splitInput=$(echo "$in" | sed -e $'s/expected:TableInfo/\\\n/g' -e $'s/ , found:TableInfo/\\\n/g')

# Diff 'expected' and 'found' as JSON
echo "$splitInput" | tail -2 | head -1 | toJson | $JQ . >expected
echo "$splitInput" | tail -1           | toJson | $JQ . >found
vimdiff expected found