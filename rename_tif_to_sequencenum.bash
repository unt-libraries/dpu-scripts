# For each folder with tiff files
for f in * ; do 
  # move into the folder
  cd "$f"
 
  # Start a counter variable called a
  a=1
 
  # Loop through all .tif files in the folder
  for i in *.tif; do
 
    # prepare the format we want to use, right now it is the same as the folder name $f
    new=$(printf "%04d.tif" "$a") #04 pad to length of 4

    # move the file to the new name
    mv -i -- "$i" "$new"
  
    # increment the counter
    let a=a+1

  # close this inner loop.
  done

  # Show that we are finished with this folder
  echo "$f renamed"
  # Move out of the folder going one level back. 
  cd ..

# finish the script
done
