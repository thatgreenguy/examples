using Gtk;

int main (string[] args) {
    Gtk.init (ref args);

    var window = new Window ();
    window.title = "First GTK+ Program";
    window.border_width = 10;
    window.window_position = WindowPosition.CENTER;
    window.set_default_size (350, 150);
    window.destroy.connect (Gtk.main_quit);

	try {
		// Either directly from a file ...
		window.icon = new Gdk.Pixbuf.from_file ("basicsample.png");
		// ... or from the theme
		//window.icon = IconTheme.get_default ().load_icon ("basicsample", 48, 0);
	} catch (Error e) {
		stderr.printf ("Could not load application icon: %s\n", e.message);
	}



    var button = new Button.with_label ("Click me!");
    button.clicked.connect (() => {
        button.label = "Thank you";
    });

    window.add (button);
    window.show_all ();

    Gtk.main ();
    return 0;
}
