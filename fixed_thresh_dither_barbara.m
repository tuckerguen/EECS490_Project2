function fixed_thresh_dither_barbara()
    img = readraw("Images/barbara.raw");
    h = myhist(img);
    c = cum_dist(h);
    thresh = 100;
    for i=1:size(c,1)
        if c(i) > (size(img,1)*size(img,2))/2.0
            thresh = i;
            break;
        end
    end
    dithered = fixed_thresh_dithering(img, thresh);
    writeraw(dithered, "Images/OUT_fixed_dither_barbara.raw");
	project_show(dithered, "Images/barbara.raw", "fixed thresh dithered");