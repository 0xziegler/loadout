echo "downloading IntellijIdea..."
wget -qO "$HOME/ideaIC.tar.gz" https://download-cdn.jetbrains.com/idea/ideaIC-2025.2.4.tar.gz

mkdir -p "$HOME/idea_extract"
tar -xzf "$HOME/ideaIC.tar.gz" -C "$HOME/idea_extract"
rm "$HOME/ideaIC.tar.gz"

mkdir -p "$HOME/ideaIC"
mv "$HOME/idea_extract"/*/* "$HOME/ideaIC"
rm -rf "$HOME/idea_extract"
echo "Done! use: 'idea <project name>' to open a project"