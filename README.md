# hot pi
My Raspi 4 gets a bit warm some times... this emails me when it does. This is a simple script for a simple computer.
If you need this for a bigger computer, I've written one for that too! https://github.com/davethepear/hot-server

I don't believe I had to install anything, it just reads a file.
Open your crontab: `crontab -e` (no sudo needed)
plop this in the crontab
```bash
*/1 * * * * /home/ubuntu/scripts/temphot.sh
```
change the directory to point to where you put the script. save it...
