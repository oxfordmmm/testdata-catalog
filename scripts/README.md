# Interacting with the bucket for testing data

Copy the configuration template and populated with the information about your bucket.
   ```shell
    bash cp local.config.template local.config
   ```
### I want to:

**Download one or more files by name**
1. Write the filenames in a file. _Example: filenames.txt_
2. Execute:
   ```shell
    bash download_samples.sh --filenames $PATH_TO_FILE
   ```


**Download all files related to a sample ID**
1. Write the sample ID in a file. _Example: the samples_ids.txt_ 
2. Execute:
   ```shell
    bash download_samples.sh --samples-ids $PATH_TO_FILE
   ```
