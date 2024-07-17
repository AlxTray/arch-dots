import hyprland from "./hyprland"
import gtk from "./gtk"
import notifications from "./notifications"

export default function init() {
    try {
        gtk()
        notifications()
        hyprland()
    } catch (error) {
        logError(error)
    }
}
