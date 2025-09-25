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

$hour = (Get-Date).Hour
$day = (Get-Date).Day
$basePath = "C:\Users\compteadmin\Pictures\wallpaper"

# Vérifie la parité du jour
if ($day % 3 -eq 1) {
    # Jour pair
    if ($hour -ge 5 -and $hour -lt 10) {
        $wallpaper = "$basePath\images\zelda\morning.jpg"
    } elseif ($hour -ge 10 -and $hour -lt 18) {
        $wallpaper = "$basePath\images\zelda\afternoon.jpg"
    } elseif ($hour -ge 18 -and $hour -lt 22) {
        $wallpaper = "$basePath\images\zelda\evening.jpg"
    } else {
        $wallpaper = "$basePath\images\zelda\night.jpg"
    }
} elseif ($day % 3 -eq 0) {
    # Jour impair
    if ($hour -ge 1 -and $hour -lt 6) {
        $wallpaper = "$basePath\images\Firewatch\Firewatch-3.jpg"
    } elseif ($hour -ge 6 -and $hour -lt 8) {
        $wallpaper = "$basePath\images\Firewatch\Firewatch-4.jpg"
    } elseif ($hour -ge 8 -and $hour -lt 12) {
        $wallpaper = "$basePath\images\Firewatch\Firewatch-5.jpg"
    } elseif ($hour -ge 12 -and $hour -lt 17) {
        $wallpaper = "$basePath\images\Firewatch\Firewatch-6.jpg"
    } elseif ($hour -ge 17 -and $hour -lt 19) {
        $wallpaper = "$basePath\images\Firewatch\Firewatch-7.jpg"
    }elseif ($hour -ge 19 -and $hour -lt 21) {
        $wallpaper = "$basePath\images\Firewatch\Firewatch-8.jpg"
    }elseif ($hour -ge 21 -and $hour -lt 23) {
        $wallpaper = "$basePath\images\Firewatch\Firewatch.jpg"
    } else {
        $wallpaper = "$basePath\images\Firewatch\Firewatch-2.jpg"
    }
}else{
    if ($hour -ge 0 -and $hour -lt 2) {
        $wallpaper = "$basePath\images\aurora\0.jpg"
    } elseif ($hour -ge 2 -and $hour -lt 4) {
        $wallpaper = "$basePath\images\aurora\2.jpg"
    } elseif ($hour -ge 4 -and $hour -lt 5) {
        $wallpaper = "$basePath\images\aurora\4.jpg"
    } elseif ($hour -ge 5 -and $hour -lt 6) {
        $wallpaper = "$basePath\images\aurora\5.jpg"
    } elseif ($hour -ge 6 -and $hour -lt 8) {
        $wallpaper = "$basePath\images\aurora\6.jpg"
    }elseif ($hour -ge 8 -and $hour -lt 10) {
        $wallpaper = "$basePath\images\aurora\8.jpg"
    }elseif ($hour -ge 10 -and $hour -lt 11) {
        $wallpaper = "$basePath\images\aurora\10.jpg"
    } elseif ($hour -ge 11 -and $hour -lt 12) {
        $wallpaper = "$basePath\images\aurora\11.jpg"
    } elseif ($hour -ge 12 -and $hour -lt 14) {
        $wallpaper = "$basePath\images\aurora\12.jpg"
    } elseif ($hour -ge 14 -and $hour -lt 15) {
        $wallpaper = "$basePath\images\aurora\14.jpg"
    } elseif ($hour -ge 15 -and $hour -lt 16) {
        $wallpaper = "$basePath\images\aurora\15.jpg"
    }elseif ($hour -ge 16 -and $hour -lt 17) {
        $wallpaper = "$basePath\images\aurora\16.jpg"
    }elseif ($hour -ge 17 -and $hour -lt 18) {
        $wallpaper = "$basePath\images\aurora\17.jpg"
    } elseif ($hour -ge 18 -and $hour -lt 20) {
        $wallpaper = "$basePath\images\aurora\18.jpg"
    } elseif ($hour -ge 20 -and $hour -lt 22) {
        $wallpaper = "$basePath\images\aurora\20.jpg"
    } else {
        $wallpaper = "$basePath\images\aurora\22.jpg"
    }
}

Set-Wallpaper $wallpaper
