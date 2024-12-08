# Banner Generator Script

This project provides a Bash and Python script that generates a customizable banner with your text input, formats it neatly, and even copies the output to your clipboard automatically. You can provide the text inline via command-line arguments.


## Features
- Create a banner with customizable text.
- The banner is formatted with `//` borders and a consistent width.
- The output is automatically copied to the clipboard (supports Linux, macOS, and Windows).
- The input text can be provided directly inline as a command-line argument.

### Usage
#### Command-Line Usage

To generate a banner and automatically copy it to your clipboard, use the following command:

run_banner.sh "Your custom text here"

This will generate the banner with your text, display it in the terminal, and copy the output to your clipboard.
### Example
```bash
bn.sh "Hello, World!"

//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
//-----------------------------Hello, World!----------------------------------//
//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//

The banner has been copied to your clipboard!
```
### Without Clipboard Tool

If no clipboard tool is available, the banner will still be displayed in the terminal, but it won't be copied to the clipboard.
  
## Prerequisites

- **Python 3.x** installed.
- **Bash** environment.
- **Clipboard tool**:
  - **Linux**: `xclip` (install with `sudo apt install xclip`).
  - **macOS**: `pbcopy` (pre-installed).
  - **Windows**: `clip` (pre-installed in WSL/Bash-like environments).

## Setup Instructions

### 1. Clone the Repository
Clone this repository to your local machine:

```bash
git clone https://github.com/alirezahoseinisha/banner-generator.git
cd banner-generator
```
### 2. Make the Scripts Executable
Make sure the bn.sh and banner.py scripts are executable:
```bash
chmod +x bn.sh
chmod +x codebanner.py
```
### 3. Move Scripts to a Directory in Your PATH

To make the scripts accessible from anywhere on your system, you Should move them to a directory like $HOME/bin/ For example:
```bash
mkdir -p $HOME/bin
mv bn.sh $HOME/bin/
mv codebanner.py $HOME/bin/
```
Make sure the directory is in your PATH by adding it to your .bashrc or .zshrc:
for Bash shel:
```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```
for zsh:
```bash
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### 4. Install Required Tools (If Not Installed)

If you're using Linux, install xclip (used to copy to clipboard):

```bash
$ sudo apt install xclip
```

If you're using macOS, pbcopy is already installed, so no need for additional setup.

If you're using Windows with WSL or a Bash-like shell, clip is available by default.

### License

This project is licensed under the MIT License - see the LICENSE file for details.

