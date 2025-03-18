read -p "Path to clean : " path

if [ -d "$path" ]; then
  find "$path" -type f -mtime +7 -exec rm -f {} \;
  echo "Deleted all files older than 7 days in $path"
else
  echo "The specified path does not exist."
  echo "Please enter a valid path."
fi