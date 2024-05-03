# Basic Ubuntu Commands

Below are some fundamental Ubuntu commands that every user should be familiar with. Whether you're a beginner or an experienced user, understanding these commands is essential for navigating and managing your system efficiently.

1. **ls** – List Directory Contents
   - Syntax: `ls [options] [directory]`
   - Example: `ls Desktop/`
   - Lists the contents of the Desktop directory.

2. **cd** – Change Directory
   - Syntax: `cd [directory]`
   - Example: `cd Desktop/`
   - Changes the current directory to Desktop/.

3. **pwd** – Print Working Directory
   - Displays the current working directory.

4. **mkdir** – Make Directory
   - Syntax: `mkdir [directory_name]`
   - Example: `mkdir new_folder`
   - Creates a new directory named new_folder.

5. **rm** – Remove
   - Syntax: `rm [options] [file/directory]`
   - Example: `rm new_file`
   - Removes the file named new_file.

6. **cp** – Copy
   - Syntax: `cp [options] [source] [destination]`
   - Example: `cp file1.txt file2.txt`
   - Copies file1.txt to file2.txt.

7. **mv** – Move
   - Syntax: `mv [options] [source] [destination]`
   - Example: `mv file1.txt /path/to/new/location`
   - Moves file1.txt to a new location.

8. **touch** – Create Empty File
   - Syntax: `touch [file_name]`
   - Example: `touch newfile.txt`
   - Creates an empty file named newfile.txt.

9. **cat** – Concatenate and Display
   - Displays the content of a file.

10. **nano** – Text Editor
    - Opens the nano text editor.

11. **grep** – Search
    - Searches for a pattern in files.

12. **sudo** – Superuser Do
    - Executes a command as a superuser (root).
  
## advanced Linux commands
1. **ifconfig**: Used to configure kernel-resident network interfaces. It sets up interfaces at boot time and is useful for debugging and system tuning.
   - Example: `ifconfig` or `ifconfig -a` (to display all network interfaces)

2. **wget**: Downloads files from the Internet or other remote computers.
   - Example: `wget https://example.com/file.txt`

3. **rsync**: Synchronizes files and directories locally or with a remote machine.
   - Example: `rsync -av source/ destination/`

4. **ps**, **pstree**, **top**, **htop**: Monitor running applications and processes.
   - Example: `ps aux`, `pstree`, `top`, or `htop`

5. **kill**, **killall**: Forcefully close troublesome applications and processes.
   - Example: `kill PID` or `killall process_name`

6. **netstat**: Displays network statistics and active network connections.
   - Example: `netstat -tuln`

7. **lsof**: Lists open files and processes.
   - Example: `lsof -i :port_number`

8. **find**: Searches for files and directories based on various criteria.
   - Example: `find /path/to/search -name "*.txt"`

9. **du**: Displays disk usage of files and directories.
   - Example: `du -sh /path/to/directory`

10. **df**: Shows disk space usage of file systems.
    - Example: `df -h`

11. **tar**: Creates and extracts compressed archive files.
    - Example: `tar -cvzf archive.tar.gz files/`

12. **chown**, **chmod**: Change ownership and permissions of files and directories.
    - Example: `chown user:group file.txt` or `chmod 755 script.sh`
Certainly! Below is a simple README file for user management in Linux. You can include this content in your README.md file:

---

# User Management in Linux

This README provides essential information about managing users in a Linux environment. Whether you're a system administrator or a curious user, understanding these commands will help you handle user accounts effectively.

## Adding a User

To add a new user, use the `adduser` command:

```bash
sudo adduser <username>
```

## Renaming a User

If you need to rename an existing user, use the `usermod` command with the `-l` option:

```bash
sudo usermod -l <newname> <oldname>
```

## Locking and Unlocking User Accounts

To lock a user account (disable its password), use the `-L` option:

```bash
sudo usermod -L <username>
```

To unlock a previously locked account, use the `-U` option:

```bash
sudo usermod -U <username>
```

## Deleting a User

To remove a user account, use the `userdel` command:

```bash
sudo userdel <username>
```

## Additional Information

- To view user account details, check the `/etc/passwd` file.
- Press `Ctrl+Alt+F1` to switch to a different virtual terminal and log in as another user.

Remember to replace `<username>` with the actual username you want to manage.

