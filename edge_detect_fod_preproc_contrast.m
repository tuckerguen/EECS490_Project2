function edge_detect_fod_preproc_contrast(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    hist = myhist(img);
    preprocessed = histeq(img, hist);
    
    edge_detected = edge_detect_fod(preprocessed, operator, thresh_frac);
    
    writeraw(edge_detected, "Images/OUT_edge_detect_fod_proc_contrast" + img_name);
    project_show(edge_detected, img_name,...
        "fod edge detected w/ histogram equalization");