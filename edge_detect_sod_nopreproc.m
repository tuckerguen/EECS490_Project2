function edge_detected = edge_detect_sod_nopreproc(img_name, operator, thresh)
    img = readraw(img_name);
    edge_detected = edge_detect_sod(img, operator, thresh);
    figure('Name', img_name + " sod edge detected no preproc", "NumberTitle", "off");
    imshow(edge_detected);
