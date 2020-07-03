function detected = detect_zero_crossing(img, thresh)
    num_rows = size(img, 1);
    num_cols = size(img, 2);

    detected = zeros(num_rows, num_cols, 'uint8');
    img = add_dimensions(img, 1, 1, 0);

    for i=2:num_rows-1
        for j=2:num_cols-1
            subimg = get_subimg(img, j, i, 3, 3);
            min = mymin(subimg);
            max = mymax(subimg);
            diff = abs(max - min);
            if diff > thresh
                detected(i, j) = 0;
            else
                detected(i, j) = 255;
            end
        end
    end