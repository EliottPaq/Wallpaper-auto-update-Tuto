# SetWallpaper.ps1

function Set-Wallpaper($path) {
    Add-Type @"
    using System.Runtime.InteropServices;
    public class Wallpaper {
        [DllImport("user32.dll", SetLastError = true)]
        public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
    }
"@
    [Wallpaper]::SystemParametersInfo(20, 0, $path, 3)
}

$hour = (Get-Date).Hour #get the hour
$basePath = "C:\Your\Path\Wallpaper-auto-update-Tuto\images" #Edit this path

if ($hour -ge 5 -and $hour -lt 10) { #this choose a images depending of the time of the day
    $wallpaper = "$basePath\morning.jpg"
} elseif ($hour -ge 10 -and $hour -lt 18) {
    $wallpaper = "$basePath\afternoon.jpg"
} elseif ($hour -ge 18 -and $hour -lt 22) {
    $wallpaper = "$basePath\evening.jpg"
} else {
    $wallpaper = "$basePath\night.jpg"
}

Set-Wallpaper $wallpaper
