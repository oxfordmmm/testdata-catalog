# Catalog of test data
This repository contains the two files that should be used to search samples in bucket for testing data. 

**metadata.csv**
Description of the samples including: 
 - Id	
 - Type: Syntetic, Clinical, Reference
 - Source	
 - Date upload	
 - Sequencing Technology: Illumina, Nanopore
 - R Number	
 - Read length	
 - Error rate	
 - Mutation rate	
 - Group	
 - Complex id	
 - Species	
 - Subspecies	
 - Strain id
 - Assembly name	
 - Assembly version	
 - Assembly level
 - Genome representation	
 - Contig count 	
 - Scaffold count	
 - Sequence length

**samples.csv** 
List of sample id and files associated to it. 

Example: 
|   id           |file                          |                    
|----------------|-------------------------------|
|id1 |read1.fastq |
|id1 |read2.fastq |
|id2 |read.bam|


