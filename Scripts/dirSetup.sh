# Create Developer dir struct in home 
mkdir -p ~/Developer/{Temp,Repos,.Archive,Uni,Working,Scripts}
echo "Developer directory structure created"

# Copy Script dir to Developer dir then remove original
cp -r ~/Scripts/* ~/Developer/Scripts/
rm -rf ~/Scripts

echo "Done! Developer folder setup complete."
