# TRF

Description
===========
This Cookbook to installs TRF.

http://tandem.bu.edu/trf/trf.html

A tandem repeat in DNA is two or more adjacent, approximate copies of a pattern of nucleotides. 
Tandem Repeats Finder is a program to locate and display tandem repeats in DNA sequences. 
In order to use the program, the user submits a sequence in FASTA format. There is no need to specify 
the pattern, the size of the pattern or any other parameter. The output consists of two files: a repeat 
table file and an alignment file. The repeat table contains information about each repeat, 
including its location, size, number of copies and nucleotide content. Clicking on the location 
indices for one of the table entries opens a second web browser that shows an alignment of the 
copies against a consensus pattern. The program is very fast, analyzing sequences on the order 
of .5Mb in just a few seconds. Submitted sequences may be of arbitrary length. Repeats with 
pattern size in the range from 1 to 2000 bases are detected. Sequence information sent to the 
server is confidential and deleted after program execution.

Requirements
============

## Platform:

* Centos 6.6
* RHEL 6.6

Notes
=====

Usage
=====
Simply include the recipe wherever you would like it installed, such as a run list (recipe[TRF]) or a cookbook (include_recipe 'TRF')


## Testing
To test the recipe we use chef test kitchen:

kitchen converge default-centos65 

kitchen login default-centos65

kitchen verify default-centos65

kitchen destroy default-centos65

Attributes
==========
See attributes/default.rb for default values.

default['TRF']['version']

License and Authors
===================

* Authors:: Bart Ailey  (<chef@eaglegenomics.com>)
* Authors:: Dan Barrell (<chef@eaglegenomics.com>)
* Authors:: Nick James  (<chef@eaglegenomics.com>)

Copyright:: 2015, Eagle Genomics Ltd
    
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
    
ToDo
====
Test change remove
