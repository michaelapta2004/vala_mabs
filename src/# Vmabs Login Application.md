 # Vmabs Login Application

This is a simple login application written in Vala. It uses GTK+ for the user interface and has a CSS file for styling.

## Prerequisites

To run this application, you will need:

* Vala
* GTK+
* A text editor

## Installation

1. Clone the repository:

```
git clone https://github.com/username/vmabs-login-app.git
```

2. Install the dependencies:

```
sudo apt install valac libgtk-3-dev
```

3. Build the application:

```
cd vmabs-login-app
make
```

## Usage

To run the application, simply type the following command in the terminal:

```
./vmabs-login-app
```

## Code Overview

The application consists of a single file, `window.vala`, which contains the main window class. The window class has three child widgets: a label, an email entry, and a password entry. It also has two buttons: a login button and a register button.

The `construct` method of the window class is responsible for setting up the user interface. It loads the CSS file and connects the signal handlers for the login and register buttons.

The `on_login_button_clicked` method is called when the login button is clicked. It checks if the entered email and password match the stored ones. If they do, the user is logged in. Otherwise, an error message is shown.

The `on_register_button_clicked` method is called when the register button is clicked. It handles the registration process.

## Conclusion

This is a simple login application that demonstrates how to use Vala and GTK+ to create a graphical user interface. It is a good starting point for learning how to develop desktop applications with Vala.

Generated by [BlackboxAI](https://www.blackbox.ai)