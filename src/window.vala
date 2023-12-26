
 namespace Vmabs {
    [GtkTemplate (ui = "/org/example/App/window.ui")]
    public class Window : Gtk.ApplicationWindow {
        //  [GtkChild]
        //  public unowned Gtk.Label label;
        [GtkChild]
        private unowned Gtk.Entry email_entry;
        [GtkChild]
        private unowned Gtk.Entry password_entry;
        [GtkChild]
        private unowned Gtk.Button login_button;
        [GtkChild]
        private unowned Gtk.Button register_button;

        public Window (Gtk.Application app) {
            Object (application: app);
        }

        construct {
            var css_provider = new Gtk.CssProvider();
            try {
                css_provider.load_from_path("/mnt/d/CODE/All VALA/vmabs/build/login.css");
            } 
            catch (Error e) {
                print("Failed to load CSS: %s\n", e.message);
            }

            Gtk.StyleContext.add_provider_for_display(Gdk.Display.get_default(), css_provider, Gtk.STYLE_PROVIDER_PRIORITY_APPLICATION);
            
            // Connect signal handlers
            login_button.clicked.connect(on_login_button_clicked);
            register_button.clicked.connect(on_register_button_clicked);
        }

        // Signal handlers
        private void on_login_button_clicked() {
            string email = email_entry.text;
            string password = password_entry.text;

            // Check if the entered email and password match the stored ones
            if (email == "stored_email" && password == "stored_password") {
                // Log the user in
            } else {
                // Show an error message
            }
        }

        private void on_register_button_clicked() {
            // Handle register button click
        }
    }
}

