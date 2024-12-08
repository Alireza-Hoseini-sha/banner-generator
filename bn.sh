#!/bin/bash

# Check if the user provided an argument
if [ -z "$1" ]; then
    echo "Usage: run_banner.sh \"your_input_text\""
    exit 1
fi

# Get the input text from the command-line argument
user_input="$1"

# Run the Python script and store the output
banner_output=$(python3 $HOME/bin/codebanner.py "$user_input")

# Print the banner to the terminal
echo "$banner_output"

# Copy the banner output to clipboard using xclip (Linux)
if command -v xclip &> /dev/null; then
    echo "$banner_output" | xclip -selection clipboard
    echo "The banner has been copied to your clipboard!"
# Copy the banner output to clipboard using pbcopy (macOS)
elif command -v pbcopy &> /dev/null; then
    echo "$banner_output" | pbcopy
    echo "The banner has been copied to your clipboard!"
# Copy the banner output to clipboard using clip (Windows)
elif command -v clip &> /dev/null; then
    echo "$banner_output" | clip
    echo "The banner has been copied to your clipboard!"
else
    echo "Clipboard tool not found. The banner is not copied to the clipboard."
fi

