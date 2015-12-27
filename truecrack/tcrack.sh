clear
format=/root/true/truecrack_volumes/*
destdir=/root/true/output.txt

for i in $format;
do
  echo "WORKING ON: $i";
  echo $i >> $destdir;
  echo "................................................" >> $destdir;
  truecrack -t "$i" -w password_list.txt >> $destdir;
  echo "::::::::::::::::::::::::::::::::::::::::::::::::" >> $destdir;
  echo "::::::::::::::::::::::::::::::::::::::::::::::::" >> $destdir;
done
