function edge_detect_fod_nopreproc(img_name, operator, thresh)
    img = readraw(img_name);
    edge_detected = edge_detect_fod(img, operator, thresh);
    figure('Name', img_name + " fod edge detected", "NumberTitle", "off");
    imshow(edge_detected);
    
    