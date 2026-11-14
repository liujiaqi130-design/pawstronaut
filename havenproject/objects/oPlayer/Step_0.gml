// Horizontal movement
if (keyboard_check_direct(ord("D"))) {
    hspd = move;
} else if (keyboard_check_direct(ord("A"))) {
    hspd = -move;
} else {
    hspd = 0;
}

// Horizontal collision
if (place_meeting(x + hspd, y, oGrounds)) {
    while (!place_meeting(x + sign(hspd), y, oGrounds)) {
        x += sign(hspd);
    }
    hspd = 0;
}

x += hspd;


// Vertical movement
vspd += (jump_time > 0) ? 0 : accel;

if (jump_time > 0) {
    jump_time--;
}

// Vertical collision
if (place_meeting(x, y + vspd, oGrounds)) {
    while (!place_meeting(x, y + sign(vspd), oGrounds)) {
        y += sign(vspd);
    }

    // Only trigger auto-jump when falling
    if (vspd > 0) {
        vspd = -12 - jumpaccel;
        jump_time = 30;
    } else {
        vspd = 0;
    }
} else {
    y += vspd;
}

with (oMovePlat) {
    if (place_meeting(x + platform_hspd, y, other)) {
        other.x += platform_hspd;
    }
}

