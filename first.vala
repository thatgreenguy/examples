using Gtk;

int main(string[] args) {
  Gtk.init (ref args);

  Gtk.Window awindow = new Window();
  awindow.show_all();

  Gtk.main();

  return 0;
}
