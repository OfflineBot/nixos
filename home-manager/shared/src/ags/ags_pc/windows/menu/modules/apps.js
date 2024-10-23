const mpris = await Service.import("mpris");

class AppData {
    constructor(name, class_name, execute, icon) {
        this.name = name;
        this.class_name = class_name;
        this.execute = execute;
        this.icon = App.configDir + icon;
    }
}

const app1 = new AppData("Terminal", "app1-box", "/scripts/app1.sh", "/icons/light/terminal.png");
const app2 = new AppData("Discord", "app2-box", "/scripts/app2.sh" , "/icons/light/discord.png");
const app3 = new AppData("Screenshot", "app3-box", "/scripts/app3.sh", "/icons/light/screenshot.png");
const app4 = new AppData("Sound", "app4-box", "/scripts/app4.sh", "/icons/light/sound.png");

const app5 = new AppData("GitHub", "app5-box", "/scripts/app5.sh", "/icons/light/github.png");
const app6 = new AppData("YouTube", "app6-box", "/scripts/app6.sh", "/icons/light/youtube.png");
const app7 = new AppData("ChatGPT", "app7-box", "/scripts/app7.sh", "/icons/light/chatgpt.png");
const app8 = new AppData("Browser", "app8-box", "/scripts/app8.sh", "/icons/light/browser.png");


const app_btn = (app, NAME) => {
    return Widget.Button({
        class_names: ["app-btn", app.class_name],
        on_clicked: () =>  { 
            Utils.execAsync(App.configDir + app.execute); 
            App.closeWindow(NAME);
        },
        child: Widget.Icon({icon: app.icon, size: 30})
    })
}

const app_row = (app_one, app_two, NAME) => {
    return Widget.Box({
        class_name: "app-row",
        vertical: false,
        children: [
            app_btn(app_one, NAME),
            app_btn(app_two, NAME)
        ]
    })
}

const app_block = (first, second, third, fourth, class_name, NAME) => {
    return Widget.Box({
        class_names: ["app-block", class_name],
        vertical: true,
        children: [
            app_row(first, second, NAME),
            app_row(third, fourth, NAME)
        ]
    })
}

export const app_widget = (NAME) => { 
    return Widget.Box({
        class_name: "app-widget",
        vertical: false,
        children: [
            app_block(app1, app2, app3, app4, "app-block1", NAME),
            app_block(app5, app6, app7, app8, "app-block2", NAME)
        ]
    });
}
