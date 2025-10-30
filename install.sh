#!/bin/bash

# Get the absolute path of the template directory
TEMPLATE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define the TEXINPUTS export line
TEXINPUTS_LINE="export TEXINPUTS=.:${TEMPLATE_DIR}//::\${TEXINPUTS}"

# Check if bashrc exists
BASHRC_FILE="$HOME/.bashrc"
if [ ! -f "$BASHRC_FILE" ]; then
    echo "Error: $BASHRC_FILE not found"
    exit 1
fi

# Check if TEXINPUTS is already configured for this template
if grep -q "TEXINPUTS.*${TEMPLATE_DIR}" "$BASHRC_FILE"; then
    echo "TEXINPUTS already configured for ${TEMPLATE_DIR}"
    echo "No changes made to $BASHRC_FILE"
else
    # Add a comment and the export line
    echo "" >> "$BASHRC_FILE"
    echo "# Neteera LaTeX template path (added by install.sh)" >> "$BASHRC_FILE"
    echo "$TEXINPUTS_LINE" >> "$BASHRC_FILE"
    
    echo "Successfully added TEXINPUTS to $BASHRC_FILE"
    echo "Template directory: ${TEMPLATE_DIR}"
    echo ""
    echo "To apply changes immediately, run:"
    echo "  source ~/.bashrc"
    echo ""
    echo "Or start a new terminal session."
fi

echo ""
echo "You can now simplify the graphicspath in preamble.tex to:"
echo "  \\graphicspath{{}}"