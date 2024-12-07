# xbash
*Converting bash scripts to C code tools**

### Install
```bash
chmod +x xbash
tar xvf bash-5.2.37.tar.gz
cd bash-5.2.37
./configure
Modify BASHDIR and XBASH in the make.sh file to point to actual values
```

### Compile the script and generate binary files
```bash
sh make.sh example.sh
```
It is recommended to use ```-static``` static compilation and ```strip``` to remove the symbol table, which increases the difficulty of reverse engineering. It is recommended to conduct comprehensive testing on the compiled program to prevent production failures. 

Due to the non open source nature of ```xbash```, some people may be concerned about its security. The following methods can be used to generate code:

1. Execute ```xbash example.sh``` in a virtual environment or other independent environment to generate ```example.sh.c```

1. Copy ```example.sh.c``` to another uninstalled ```xbash``` only from [bash](https://www.gnu.org/software/bash/)The environment for downloading source code from the official website.

1. ```cp example.sh.c shell.c``` Covering bash source code

1. ```make``` Generate executable program


### Execute binary files
```bash
./example.sh.x
```

### Features

- Converted to C code, will not revert back to the original script code during execution

- Generate independent executable programs that do not rely on the bash interpreter

- Resolve [decrypt](https://github.com/chenzhch/decrypt) All cracking methods

### Software

```bash-5.2.37.tar.gz``` Bash source code, available from [bash](https://www.gnu.org/software/bash/) Download from the official website, version 5.2.37.

```xbash_android_v7a```  Android version 

```xbash_linux_x86-64``` LINUX 64 bit version

```xbash_macOS_11.7.9_x86_64``` MacOS 64 bit version

### History

- 2024-12-06
 
  Initial version