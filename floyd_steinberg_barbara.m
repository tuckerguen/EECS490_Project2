function floyd_steinberg_barbara()
    img = readraw("Images/barbara.raw");
    dithered = floyd_steinberg_dither(img);
    writeraw(dithered, "Images/OUT_floyd_steinberg_dither_barbara.raw");
    project_show(dithered, "Images/barbara.raw", "floyd steinberg dithered");