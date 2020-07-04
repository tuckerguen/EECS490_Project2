function edge_detect_fod_nopreproc(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    edge_detected = edge_detect_fod(img, operator, thresh_frac);
    writeraw(edge_detected, "Images/OUT_edge_detect_fod_nproc" + img_name);
    project_show(edge_detected, img_name,...
        "fod edge detected, top " + (1-thresh_frac) + "%");
    
    