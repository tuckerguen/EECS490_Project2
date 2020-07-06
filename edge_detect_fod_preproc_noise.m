function edge_detect_fod_preproc_noise(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    
    % Denoise the image
    mask = [1/16,2/16,1/16;2/16,4/16,2/16;1/16,2/16,1/16];
    preprocessed = convolve(img, mask);

    edge_detected = edge_detect_fod(preprocessed, operator, thresh_frac);
    
    writeraw(edge_detected, "Images/OUT_edge_detect_fod_proc_noise" + img_name);
    project_show(edge_detected, img_name, ...
        "fod edge detected w/ noise reduction");