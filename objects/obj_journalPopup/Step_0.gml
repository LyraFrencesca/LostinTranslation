lifetime -= 1;
y_offset -= 0.3;

if (lifetime <= 0) {
    instance_destroy();
}
