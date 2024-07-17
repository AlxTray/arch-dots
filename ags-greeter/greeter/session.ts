import GLib from "gi://GLib?version=2.0"
import { bash } from "lib/utils"

const userName = await bash("find /home -maxdepth 1 -printf '%f\n' | tail -n 1")

declare global {
    const WALLPAPER: string
}

Object.assign(globalThis, {
    TMP: `${GLib.get_tmp_dir()}/greeter`,
    OPTIONS: "/var/cache/greeter/options.json",
    WALLPAPER: "/etc/greetd/ags/background.jpg",
    USER: userName,
})

Utils.ensureDirectory(TMP)
