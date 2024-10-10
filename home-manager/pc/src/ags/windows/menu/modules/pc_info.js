import { cpu, ram, disk } from "../../bar/hardware.js";

const pc_part_container = (icon, icon_class, value, value_class) => {
    return Widget.Box({
        vertical: false,
        class_name: "pc-part-container",
        children: [
            Widget.Label({label: icon, class_names: ["pc-value-left", icon_class]}),
            Widget.Label({label: value, class_names: ["pc-value-right", value_class]}),
        ]
    });
}

export const pcinfo_widget = Widget.Box({
    class_name: "pcinfo-widget",
    vertical: true,
    children: [
        pc_part_container("CPU:  ", "pc-cpu", cpu.bind(), "pc-cpu-value"),
        pc_part_container("RAM:", "pc-ram", ram.bind(), "pc-ram-value"),
        pc_part_container("DISK:", "pc-disk", disk.bind(), "pc-disk-value"),
    ]
});

