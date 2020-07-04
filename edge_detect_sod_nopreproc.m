function edge_detected = edge_detect_sod_nopreproc(img_name, operator, thresh)
    img = readraw("Images/" + img_name);
    edge_detected = edge_detect_sod(img, operator, thresh);
    writeraw(edge_detected, "Images/OUT_edge_detect_sod_nproc" + img_name);
    project_show(edge_detected, img_name, "sod edge detected");
