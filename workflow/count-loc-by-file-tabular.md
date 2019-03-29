# Count-loc-by-file-tabular.md

Here's a workflow for counting a project's files by lines of code and then tabularizing it. This is useful for exporting into a spreadsheet where you can detect the delimiters as spaces and then perform more advanced analysis.

```
cloc ./ --by-file  | sed -E "s|^.+/||" | sed -E "s/[[:space:]]+/ /g"
```

Example output
```
File blank comment code
Transaction.h 3 7 5
APIConstants.swift 2 7 5
```

### Components

* [cloc](https://github.com/AlDanial/cloc) - Tool to count lines of code in a project
* `sed -E "s|^.+/||"` - Replace everything starting from the start of line to the last trailing forward slash (remove directory names)
* `sed -E "s/[[:space:]]+/ /g"` - Collapse all lengthy whitespaces into a single space
