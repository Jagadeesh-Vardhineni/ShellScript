Simple Notes: Redirection & tee (Easy to Understand)
What is Redirection?

Redirection means sending the output of a command somewhere else (usually to a file) instead of showing it only on the screen.

1. > (Overwrite)

Writes output to a file.

If the file already exists, old data is deleted.

Example:

echo "Hello" > file.txt

Screen:

(No output)

file.txt

Hello
2. >> (Append)

Adds output to the end of a file.

Example:

echo "Linux" >> file.txt

file.txt

Hello
Linux

Old data is not deleted.

3. 2> (Errors Only)

Saves only error messages.

Example:

ls abc 2> error.log

Screen:

(No output)

error.log

ls: cannot access 'abc': No such file or directory
4. &>> (Output + Errors)

Saves both normal output and errors to a file.

Example:

dnf install nginx -y &>> install.log

Everything is written to install.log.

What is tee?

tee does two things at the same time:

Shows output on the screen.
Saves the same output to a file.

Example:

echo "Installing Nginx...SUCCESS" | tee log.txt

Screen:

Installing Nginx...SUCCESS

log.txt

Installing Nginx...SUCCESS
tee -a

Adds to the file instead of replacing it.

Example:

echo "Installing MySQL...SUCCESS" | tee -a log.txt

log.txt

Installing Nginx...SUCCESS
Installing MySQL...SUCCESS
Difference Between > and tee
Using >
echo "Hello" > file.txt

✔ Saved to file

❌ Nothing shown on the screen

Using tee
echo "Hello" | tee file.txt

✔ Saved to file

✔ Also shown on the screen

Easy Memory Trick
> → Send to file only
>> → Add to file
2> → Save errors only
&>> → Save everything (output + errors)
tee → Show on screen + Save to file
Real Example
dnf install nginx -y &>> install.log
echo "Installing Nginx...SUCCESS" | tee -a install.log

Result:

Terminal

Installing Nginx...SUCCESS

install.log

Installing:
nginx...
Complete!
Installing Nginx...SUCCESS
Quick Interview Answers

Q: What is redirection?
A: Redirection sends a command's output or errors to a file instead of the terminal.

Q: What is tee?
A: tee displays the output on the terminal and also writes it to a file.

Q: Difference between > and tee?

> → Saves only to a file.
tee → Shows on the terminal and saves to a file.