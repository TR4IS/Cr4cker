#!/bin/bash

# Set the base date (adjust this if needed)
BASE_DATE="2006-01-01"

# Define the "HELLO WORLD!" letter pattern (7 rows x width of letters)
LETTER_MAP=(
    "							"    
    " X X XXX X   X   XXX   X   X XXX XXXX X   XXX  X "  # H E L L O   W O R L D !
    " X X X   X   X   X X   X X X X X X  X X   X  X X     "  # Row 2
    " XXX XXX X   X   X X   X X X X X XXXX X   X  X X     "  # Row 3
    " X X X   X   X   X X   XX XX X X X X  X   X  X       "  # Row 4
    " X X XXX XXX XXX XXX   X   X XXX X  X XXX XXX  X     "  # Row 5
)
# Print the pattern before making commits
echo "Preview of the pattern:"
for (( row=0; row<5; row++ )); do
    echo "${LETTER_MAP[row]}"
done
#exit 0  # Stop script execution here for preview

# Loop through each row (5 rows for GitHub graph)
for (( row=0; row<5; row++ )); do
    for (( col=0; col<52; col++ )); do
        if [[ "${LETTER_MAP[row]:col:1}" == "X" ]]; then
            COMMIT_DATE=$(date -d "$BASE_DATE +$((col * 7 + row)) days" +"%Y-%m-%d")
            echo "Commit on $COMMIT_DATE" > hello.txt
            git add hello.txt
            GIT_AUTHOR_DATE="$COMMIT_DATE 12:00:00" GIT_COMMITTER_DATE="$COMMIT_DATE 12:00:00" \
            git commit -m "Painting HELLO WORLD! on $COMMIT_DATE"
        fi
    done
done

# Push commits to GitHub
git branch -M main
git remote add origin https://github.com/TR4IS/Cr4cker
git push --force origin main

