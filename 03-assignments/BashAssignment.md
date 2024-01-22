# Unix Shell Assignment

## Introduction
Kaylee and Simeon are biomedical engineering researchers trying to reanalyze data from an undergraduate project, where they collected electroencephalography (EEG), electromyography (EMG), and actigraphy (acceleration and rotational) recordings, and other information from subjects as they tried to keep their balance on a moving platform for a balance project.

Unfortunately, when they were silly undergraduates, they didn't know to keep their data tidy. They'd like your help efficiently doing the following data management tasks using your newfound Bash knowledge.

## Instructions
* Complete the listed tasks in Bash
* Your assignment submission should consist of a shell script that performs the listed tasks
    * *Hint*: Test commands as you write them by pasting them into the terminal and checking the output and state of the folder!
* Complete items in order. The results from items denoted with [✔️] will be graded, but ungraded steps are essential to completing graded items correctly.
* As with all programming, spelling is essential. Incorrectly named output files will not be recognized by the grader.

## Tasks
### Task 1: Setup your environment
1. Download their undergraduate data package: [dataset.zip](dataset.zip?raw=1)
1. Unzip it into your directory
    * *Hint*: Consider the `unzip` command
1. Change directory into the folder containing the data package contents
1. [✔️] To make sure we're keeping good records this time, print the current path to your working directory
1. [✔️] Make a new folder named `tidied_data`
1. [✔️] Make a new folder named `log_files`

### Task 2: Taking inventory
1. List the contents of the data folder
1. [✔️] List all the EEG files and write this list to a text file named `log_files/eeg_inventory.txt`. 
1. Preview the **first 8 lines** of the `log_files/eeg_inventory.txt` file, does this look right?

### Task 3: Taking inventory, part 2
1. Let's visually double check: does the naming convention of the EEG files match `eeg_[subjectid]_[session].edf`?
    * *Bonus*: Can you do this automatically with code?
1. [✔️] Based on the `log_files/eeg_inventory.txt` file and the naming convention, generate a list of subject numbers and write it a file named `log_files/subject_ids_from_eeg.txt`. 
    * *Hint*: Consider the `cut` command
    * Preview the **first 8 lines** of this file to visually double-check your work.
1. [✔️] Sort the `log_files/subject_ids_from_eeg.txt` file and write the output to `log_files/subject_ids_from_eeg_sorted.txt`. 
    * Preview the **first 8 lines** of this file to visually double-check your work.
1. Let's visually double check: does each subject have multiple EEG files? Are their subject IDs duplicated?
1. [✔️] Create a unique list of subject IDs and write the output to `log_files/subject_ids.txt`. 
    * Preview the **first 8 lines** of this file to visually double-check your work.

### Task 4: The life changing magic of tidying up
1. For each subject:
    1. [✔️] Create a folder named after the subject ID in the `tidied_data` directory
        * *Hint*: Consider a `for` loop
    1. [✔️] Copy all files relating to that subject into their respective directories
        * *Note*: Copy all files for each subject, including all data files (EEG, EMG, actigraphy), images, and notes.
1. [✔️] Notice that all the notes files have not been named consistently. Rename all the note files to `[subjectid]_notes.txt` within each subject folder.

### Task 5: Checking our work
1. Confirm that you've copied all the files over to the `tidied_data` directory
    1. Count the number of files copied:
        1. Generate a list of all the files within all the directories in `tidied_data`
            * *Hint*: Consider the `find` command and look for files with the `-type` option
        1. [✔️] Count the number of lines in the file list. Write this number to `log_files/tidied_file_count.num`.
            * *Hint*: Consider the `wc` command. How do we make it count lines?
    1. [✔️] Count the number of files in the original folder. Write this number to `log_files/orig_file_count.num`.
1. [✔️] Do the file counts match? If they do, create a file named `log_files/file_counts_match`. If they do not, create a file named `log_files/file_counts_discrepancy`.
    * *Hint*: Consider using variables, an `if` statement, and `-eq`
