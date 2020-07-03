function edge_detected = edge_detect_sod_preproc(img_name, operator, thresh)
    img = readraw(img_name);
    
    mask = [1/16,2/16,1/16;2/16,4/16,2/16;1/16,2/16,1/16];
    img = convolve(img, mask);
    
    edge_detected = edge_detect_sod(img, operator, thresh);
    figure('Name', img_name + " sod edge detected preproc", "NumberTitle", "off");
    imshow(edge_detected);
