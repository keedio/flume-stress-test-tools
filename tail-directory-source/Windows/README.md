tail-directory-source/Unix
===========================

This tool is designed to perform stress tests to https://github.com/mvalleavila/flume-taildirectory-source running under Windows

Use
====

There are two files to use:

### appendToFile.bat
The main script, it simulate a log rotation in Windows, creating some files and appending information  
``` C:\> appendToFile.bat <spoolDirectory> <fileName> ```

### countLines.bat  
Used to count lines processed by flume, it is used to ensure all lines were correctly processed
``` C:\> countLines.bat <fileName> ```

To use this scripts the flume sink "file-roll" is neccesary:  
```
agent.sinks.file-sink.channel = memory-channel
agent.sinks.file-sink.type = file_roll
agent.sinks.file-sink.sink.directory = /var/log/flume/
agent.sinks.file-sink.sink.rollInterval = 0
```
