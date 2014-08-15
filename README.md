# CHEF Basics #

In the cookbooks folder you will find a simple cookbook (apache)  
which will do the following this

* Install Apache webserver
* Ensuring Apache webserver service is running
* Copying a directory onto the node which contains the contents of a website
* Creating an example index.html file based on a template using node and user-defined attributes

You can set this up on your VM or cloud-instance and play around  
with it by following these steps. This uses the chef-client running  
in local-mode.

1) Install chef  
\# curl -L https://www.opscode.com/chef/install.sh | sudo bash

If you want to do this on a windows machine, get the chef-client from here --> [http://www.getchef.com/chef/install/](http://www.getchef.com/chef/install/)

2) Clone this git-repo  
\# git clone https://github.com/icclab/chef_basic_example.git

3) Change into cookbooks folder  
\# cd chef_basic_example/cookbooks

4) Run the chef-client to execute the apache cookbook  
\# chef-client -z -o apache

**Explanation of apache cookbook**  
Here you'll find a detailed description of the various parts of the apache  
cookbook as well as a short introduction into chef

[Chef Basics / Explanation of apache cookbook](https://docs.google.com/document/d/1r-CBmWbGjh0p_EPoxTz26xJGWe5Z8zpYGQ9uZvVwc1A/edit#)