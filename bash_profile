#!/bin/bash 

# Load .bashrc and other files...
for file in ~/.{bashrc,bash_prompt,aliases,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done
unset file