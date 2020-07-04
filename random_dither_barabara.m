function random_dither_barabara()
    img = readraw("Images/barbara.raw");
    dithered = random_dithering(img);
    writeraw(dithered, "Images/OUT_rand_dither_barbara.raw");
    project_show(dithered, "Images/barbara.raw", "random dithered");