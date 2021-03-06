import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    let window = NSWindow()

    func applicationDidFinishLaunching(aNotification: NSNotification)
    {
        window.setContentSize(NSSize(width: 500, height: 350))
        window.styleMask = NSTitledWindowMask | NSClosableWindowMask |
                           NSMiniaturizableWindowMask | NSResizableWindowMask
        window.opaque = false
        window.center()
        window.title = "Experiment 4"
        let text = NSTextView(frame: NSMakeRect(20, 150, 180, 30))
        text.string = "Some Text"
        text.editable = false
        text.backgroundColor = window.backgroundColor
        window.contentView!.addSubview(text)

        window.makeKeyAndOrderFront(window)
        window.level = 1
    }
}

let app = NSApplication.sharedApplication()
let controller = AppDelegate()

app.delegate = controller
app.run()
