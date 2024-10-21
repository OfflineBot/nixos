import { cpu, ram, disk } from "../bar/hardware.js";

const NAME = "stats";

//export const brightness = Variable("", {
//    poll: [250, App.configDir + '/scripts/get_bright.sh']
//});

export const volume = Variable("", {
    poll: [250, App.configDir + '/scripts/get_full_sound.sh']
});
//export const battery = Variable("", {
//    poll: [1000, App.configDir + '/scripts/battery.sh']
//})

export const wifi = Variable("", {
    poll: [5000, App.configDir + '/scripts/wifi.sh']
})

const stat = (stat_name, stat_value, class_name) => {
    return Widget.Box({
        vertical: false,
        class_name: "stat-box",
        children: [
            Widget.Box({
                class_name: "stat-name-box",
                child: Widget.Label({label: stat_name, class_names: ["stat-name", class_name]}),
            }),
            Widget.Box({
                class_name: "stat-val-box",
                child: Widget.Label({label: stat_value, class_names: ["stat-val", class_name]})
            })
        ]
    });
}

const stats_box = Widget.Box({
    vertical: true,
    class_name: "stats-main",
    children: [
        stat("CPU:", cpu.bind(), "stat-cpu"),
        stat("RAM:", ram.bind(), "stat-ram"),
        stat("DISK:", disk.bind(), "stat-disk"),
        //stat("Brightness:", brightness.bind(), "stat-bright"),
        stat("Volume:", volume.bind(), "stat-volume"),
        //stat("Battery:", battery.bind(), "stat-battery"),
        stat("WiFi:", wifi.bind(), "stat-wifi"),
    ]
})

export const stats = Widget.Window({
    name: NAME,
    class_name: "stat-window",
    setup: self => self.keybind("Escape", () => {
        App.closeWindow(NAME)
    }),
    visible: false,
    margins: [10, 10, 0, 10],
    anchor: ["top", "right"],
    keymode: "normal",
    child: Widget.Box({
        class_name: "stat-wrapper",
        child: stats_box
    }),
})

