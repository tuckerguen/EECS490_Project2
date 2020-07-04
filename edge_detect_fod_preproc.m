function edge_detect_fod_preproc(img_name, operator, thresh)
    img = readraw("Images/" + img_name);
    hist = myhist(img);
    preprocessed = histeq(img, hist);
    edge_detected = edge_detect_fod(preprocessed, operator, thresh);
    writeraw(edge_detected, "Images/OUT_edge_detect_fod_proc" + img_name);
    project_show(edge_detected, img_name, "fod edge detected w/ preproc");