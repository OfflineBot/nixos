import { cpu, ram } from "../bar/hardware.js";
import { time, date } from "../bar/clock.js";


const NAME = "quick_menu"

function Icon(path_to_icon, icon_size) {
    return Widget.Icon({
        icon: path_to_icon,
        size: icon_size,
    })
}

function btn_container(name, command, path_to_icon, icon_size) {
    return Widget.Button({
        class_name: "quick-logout-btn",
        on_clicked: () => Utils.exec(command),
        //tooltip_text: name,
        child: Widget.Box({
            vertical: true,
            children: [
                Icon(path_to_icon, icon_size),
                //Widget.Label({ label: name })
            ]
        })
    })
}

const row = (icon_size) => {
    return Widget.CenterBox({
        class_name: "quick-logout-boxes",
        start_widget: btn_container("Logout", "hyprctl dispatch exit", "/home/offlinebot/.config/ags/icons/logout.png", icon_size),
        center_widget: btn_container("Power Off", "systemctl poweroff", "/home/offlinebot/.config/ags/icons/shutdown.png", icon_size),
        end_widget: btn_container("Reboot", "reboot", "/home/offlinebot/.config/ags/icons/reboot.png", icon_size)
    })
}

const logout = Widget.Box({ child: row(60), })

const time_label = Widget.Label({ label: time.bind() })
const date_label = Widget.Label({ label: date.bind() })
const cpu_label = Widget.Label({ class_name: "quick-cpu", label: cpu.bind()});
const ram_label = Widget.Label({ class_name: "quick-ram", label: ram.bind()});

const time_info = Widget.Box({
    class_name: "quick-time-info",
    vertical: true,
    children: [
        time_label,
        date_label,
    ]
});
const pc_info = Widget.Box({
    vertical: true,
    class_name: "quick-pc-info",
    children: [
        cpu_label,
        ram_label
    ]
})

const info = Widget.Box({
    vertical: false,
    class_name: "quick-info",
    children: [
        time_info,
        pc_info
    ]
})

const app = (name, execute) => {
    return Widget.Button({
        class_name: "quick-app-btn",
        on_clicked: () => {
            Utils.execAsync(execute);
            App.closeWindow(NAME);
        },
        child: Widget.Label({ label: name })
    })
}

const apps = Widget.Box({
    vertical: false,
    class_name: "quick-apps",
    children: [
        app("Terminal", "/home/offlinebot/.config/ags/scripts/app1.sh"),
        app("Discord", "/home/offlinebot/.config/ags/scripts/app2.sh"),
        app("Firefox", "/home/offlinebot/.config/ags/scripts/app3.sh")
    ]
});

const container = Widget.Box({
    vertical: true,
    class_name: "quick-main",
    children: [
        apps,
        info,
        logout,
    ]
});

export const quick_menu = Widget.Window({
    name: NAME,
    //monitor: 2,
    setup: self => self.keybind("Escape", () => {
        App.closeWindow(NAME)
    }),
    visible: false,
    margins: [6, 0, 0, 8],
    class_name: "quick_menu",
    anchor: ["top", "left"],
    keymode: "exclusive",
    child: container,
});
