echo -n "Enter your name :"

read name

echo "Welcome $name"

echo -n "Congratulations! You just created and ran your first shell script "
echo "using Bash in IBM Skills Network"

#theia@theia-vasanthit212:/home/project$ ls -l greet.sh
#-rw-r--r-- 1 theia users 178 Feb 26 01:11 greet.sh
#theia@theia-vasanthit212:/home/project$ bash greet.sh
#Enter your name :VASANTH
#Welcome VASANTH
#Congratulations! You just created and ran your first shell script using Bash in IBM Skills Network
#theia@theia-vasanthit212:/home/project$ which bash
#/bin/bash
#theia@theia-vasanthit212:/home/project$ #! /bin/bash
#theia@theia-vasanthit212:/home/project$ chmod +x greet.sh
#theia@theia-vasanthit212:/home/project$ chmod u+x greet.sh
#theia@theia-vasanthit212:/home/project$ ls -l greet.sh
#-rwxr-xr-x 1 theia users 178 Feb 26 01:11 greet.sh
#theia@theia-vasanthit212:/home/project$ ./greet.sh
#Enter your name :VASANTH
#Welcome VASANTH
#Congratulations! You just created and ran your first shell script using Bash in IBM Skills Network
#theia@theia-vasanthit212:/home/project$ 

Suppose you have the file pets.txt with the following contents:

$ cat pets.txt
goldfish
dog
cat
parrot
dog
goldfish
goldfish

If you only use sort on pets.txt, you get:

$ sort pets.txt
cat
dog
dog
goldfish
goldfish
goldfish
parrot

And if you only use uniq, you get:

$ uniq pets.txt
goldfish
dog
cat
parrot
dog
goldfish
But by combining the two commands in the correct order, you get back:

$ sort pets.txt | uniq
cat
dog
goldfish
parrot
which are the sorted, unique lines from pets.txt!
