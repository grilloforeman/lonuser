## Lonuser

The script aims to be a response to vangrant, which does nothing more than automate the use of virtualbox, 
vangrant supports several other technologies and virtualizers, 
however, nothing more than a response with the aim of showing the incredible shell script


## USE
Create the main file. Choose a directory.

$cd seila

$init


The configuration file will be created in the directory.
In this file you can change some characteristics. 


## Create SERver OVA

Vangrant has a server where it downloads the boxes, in this case you will have to have a web server, 
and put the .ova inside, as the objective is to have more eggs and you will have something like the vangrant website,
just follow everything that is inside this egg and you will almost have a system. 
Just create the website later and away you go.


Apache 

Create file

teste.conf

<VirtualHost *:80>

ServerName teste.local

ServerAlias www.teste.local

DocumentRoot /var/www/teste

< /VirtualHost>




Then just place the eggs in this directory



## lonuser

-d you choose the eggs it pulls from the list.txt 

-t download the eggs

-c create systems


