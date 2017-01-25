echo You should pass the folder you want to insert these assets into the structure of.  You passed:
echo "%1"
read -p "Press any key to continue or CTRL-C to cancel... " -n1 -s
cp -Rv ./res/* "%1"
