function edge_detect_fod_preproc(img_name, operator, thresh)
    img = readraw(img_name);
    hist = myhist(img);
    preprocessed = histeq(img, hist);
       
    figure('Name', img_name + " preprocessed", "NumberTitle", "off");
    imshow(preprocessed);

    img = readraw(img_name);
    edge_detected = edge_detect_fod(img, operator, thresh);
    
    figure('Name', img_name + " fod edge detected w/ preproc", "NumberTitle", "off");
    imshow(edge_detected);