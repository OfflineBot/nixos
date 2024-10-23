

const folder_btn = (name, command, class_name) => {
    return Widget.Button({
        class_name: "folder-btn",
        on_clicked: () => Utils.execAsync(command),
        child: Widget.Label({label: name, class_name: class_name})
    });
}

const folder_container1 = Widget.Box({
    class_name: "folder-container",
    children: [
        folder_btn("Downloads", "nemo /home/offlinebot/Downloads", "folder-download"),
        folder_btn("Documents", "nemo /home/offlinebot/Documents", "folder-documents"),
    ]
});
const folder_container2 = Widget.Box({
    class_name: "folder-container2",
    children: [
        folder_btn("Videos", "nemo /home/offlinebot/Videos", "folder-videos"),
        folder_btn("Pictures", "nemo /home/offlinebot/Pictures", "folder-pictures"),
    ]
});
const folder_container3 = Widget.Box({
    class_name: "folder-container3",
    children: [
        folder_btn("Configs", "nemo /home/offlinebot/.config", "folder-configs"),
        folder_btn("Home", "nemo /", "folder-home"),
    ]
});

export const folders_widget = Widget.Box({
    vertical: true,
    class_name: "folder-widget",
    children: [
        folder_container1,
        folder_container2,
        folder_container3,
    ]
});
