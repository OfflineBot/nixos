
import { applauncher } from "./windows/applauncher/applauncher.js";
import  { Bar } from "./windows/bar/bar.js"
import { logout } from "./windows/logout/logout.js"
//import { quick_menu } from "./windows/quick_menu/quick_menu.js";
import { menu } from "./windows/menu/menu.js"
import { stats } from "./windows/stats/stats.js"

App.config({
    //style: "./style/style.css",

    windows: [
        Bar(0),
        Bar(1),
        Bar(2),
        applauncher,
        logout,
        menu,
        stats
    ],
})

App.applyCss(App.configDir + "/style/colors.css");

App.applyCss(App.configDir + "/style/bar.css");
App.applyCss(App.configDir + "/style/logout.css");
App.applyCss(App.configDir + "/style/menu.css");
App.applyCss(App.configDir + "/style/quick_menu.css");
App.applyCss(App.configDir + "/style/app.css");
App.applyCss(App.configDir + "/style/stats.css");


export { }
