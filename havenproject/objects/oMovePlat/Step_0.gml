xprevious = x;
yprevious = y;

if (direction == 1) {
    x += move;
    mtime--;

    if (mtime <= 0) {
        direction = -1;
        mtime = 60;
    }
}
else {
    x -= move;
    mtime--;

    if (mtime <= 0) {
        direction = 1;
        mtime = 60;
    }
}

platform_hspd = x - xprevious;
platform_vspd = y - yprevious;