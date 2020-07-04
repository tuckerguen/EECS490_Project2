function diff_mat = get_diff_mat(img)
    num_rows = size(img, 1);
    num_cols = size(img, 2);

    diff_mat = zeros(num_rows, num_cols, 'double');
    img = add_dimensions(img, 1, 1, 0);

    for i=1:num_rows
        for j=1:num_cols
            subimg = get_subimg(img, j, i, 3, 3);
            min = mymin(subimg);
            max = mymax(subimg);
            diff = abs(max - min);
            diff_mat(i,j) = diff;
        end
    end