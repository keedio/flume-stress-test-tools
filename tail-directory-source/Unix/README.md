###  tail-directory-source/Unix

This tool is designed to perform stress tests to https://github.com/mvalleavila/flume-taildirectory-source  

### Use
There are three files to use:  
- appendToFile.sh 
The main script, it simulate a log rotation in Linux, creating some files and appending information  

- appendToFileService.init  
```$ appendToFileService.init```
Use to launch a procces that starts to run appendToFile, the default directory for outputFiles is /tmp/spoolDir


- findLineLost.sh  
```$ ./findLineLost.sh <flumeOutputFileToChec>```
This is used to test the correct result of lines proccesed by flume, checking if some line is lost, or duplicate.  
If the command ends with any result all lines was sent succesfully.  
Try this flume sink config for check a local output file with that script:
```
agent.sinks.file-sink.channel = memory-channel
agent.sinks.file-sink.type = file_roll
agent.sinks.file-sink.sink.directory = /var/log/flume/
agent.sinks.file-sink.sink.rollInterval = 0
```
