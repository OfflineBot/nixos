import { CPU, RAM, power_off, Date, Clock, ClientTitle, Media, Notification, SysTray, Volume, Workspaces } from "./modules.js"

function Left() {
    return Widget.Box({
        spacing: 8,
        children: [
            Workspaces(),
            ClientTitle(),
        ],
    })
}

function Center() {
    return Widget.Box({
        spacing: 8,
        children: [
            Media(),
            Notification(),
        ],
    })
}

function Right() {
    return Widget.Box({
        hpack: "end",
        spacing: 8,
        children: [
            //Volume(),
            //CPU(),
            //RAM(),
            Clock(),
            Date(),
            power_off(),
            //SysTray(),
        ],
    })
}

function Bar(monitor) {
    let my_name = "bar-" + String(monitor);
    return Widget.Window({
        name: my_name,
        visible: false,
        class_name: "bar",
        keymode: 'on-demand',
        monitor: monitor,
        margins: [10, 10, 0, 10],
        anchor: ["top", "left", "right"],
        exclusivity: "exclusive",
        child: Widget.CenterBox({
            class_name: "bar-content",
            start_widget: Left(),
            center_widget: Center(),
            end_widget: Right(),
        }),
    })
}

export { Bar }
