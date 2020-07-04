function edge_detected = edge_detect_sod_preproc(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    
    mask = [1/16,2/16,1/16;2/16,4/16,2/16;1/16,2/16,1/16];
    img = convolve(img, mask);
    edge_detected = edge_detect_sod(img, operator, thresh_frac);
    
    writeraw(edge_detected, "Images/OUT_edge_detect_sod_proc" + img_name);
    project_show(edge_detected, img_name, "sod edge detected preproc");
