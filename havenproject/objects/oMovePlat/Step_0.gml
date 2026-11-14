xprevious = x;
yprevious = y;

if (direction == 1) {
    x += move;
    mtime--;

    if (mtime <= 0) {
        direction = -1;
        mtime = mtimemax;
    }
}
else {
    x -= move;
    mtime--;

    if (mtime <= 0) {
        direction = 1;
        mtime = mtimemax;
    }
}

platform_hspd = x - xprevious;
platform_vspd = y - yprevious;