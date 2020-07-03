function edge_detected = edge_detect_sod(img, operator, thresh)
    switch lower(operator)
        case "laplacian"
            mask = [ 0 -1  0; 
                    -1  4 -1; 
                     0 -1  0];
        case "prewitt"
            mask = [-1/8 -1/8 -1/8; 
                    -1/8   1  -1/8; 
                    -1/8 -1/8 -1/8];
        case "sep-laplacian"
            mask = [-1/4 1/8 -1/4; 
                     1/8 1/2  1/8;
                    -1/4 1/8 -1/4];
        otherwise 
            printf("No valid operator defined; using laplacian");
            mask = [ 0 -1  0; 
                    -1  4 -1; 
                     0 -1  0];
    end

    convolved = convolve(img, mask);
    edge_detected = detect_zero_crossing(convolved, thresh);
    