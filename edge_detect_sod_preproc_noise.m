function edge_detected = edge_detect_sod_preproc_noise(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    
    mask = [1/16,2/16,1/16;2/16,4/16,2/16;1/16,2/16,1/16];
    filtered = convolve(img, mask);
    edge_detected = edge_detect_sod(filtered, operator, thresh_frac);   
    
    writeraw(edge_detected, "Images/OUT_edge_detect_sod_proc_noise" + img_name);
    project_show(edge_detected, img_name, "sod edge detected preproc noise");
