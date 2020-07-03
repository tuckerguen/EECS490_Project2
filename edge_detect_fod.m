function edge_detected = edge_detect_fod(img, operator, thresh)
    % Change to compute threshold somehow
    % consider changing this to use the K formula (pg 497 in txtbk pdf)
    switch lower(operator)
        case "pixel_diff"
            row_mask = [0 0 0; 0 1 -1; 0 0 0];
            col_mask = [0 -1 0; 0 1 0; 0 0 0];
        case "sep_pixel_diff"
            row_mask = [0 0 0 ; 1 0 -1; 0 0 0];
            col_mask = [0 -1 0; 0 0 0; 0 1 0];
        case "roberts"
            row_mask = [0 0 -1; 0 1 0; 0 0 0]; 
            col_mask = [-1 0 0; 0 1 0; 0 0 0];
        case "sobel"
            row_mask = [1/4 0 -1/4; 1/2 0 -1/2; 1/4 0 -1/4];
            col_mask = [-1/4 -1/2 -1/4; 0 0 0; 1/4 1/2 1/4];
        case "frei-chen"
            row_mask = [1/(2+sqrt(2)) 0 -1/(2+sqrt(2));...
                        sqrt(2)/(2+sqrt(2)) 0 -sqrt(2)/(2+sqrt(2));...
                        1/(2+sqrt(2)) 0 -1/(2+sqrt(2))];
            col_mask = [-1/(2+sqrt(2)) -sqrt(2)/(2+sqrt(2)) -1/(2+sqrt(2));...
                        0 0 0;...
                        1/(2+sqrt(2)) sqrt(2)/(2+sqrt(2)) 1/(2+sqrt(2))];
        case "prewitt" 
            %prewitt
            row_mask = [1/3 0 -1/3; 1/3 0 -1/3; 1/3 0 -1/3];
            col_mask = [-1/3 -1/3 -1/3; 0 0 0; 1/3 1/3 1/3];
        otherwise 
            printf("No valid operator defined; using Prewitt");
            %prewitt
            row_mask = [1/3 0 -1/3; 1/3 0 -1/3; 1/3 0 -1/3];
            col_mask = [-1/3 -1/3 -1/3; 0 0 0; 1/3 1/3 1/3];
    end
    
    row_grad = convolve(img, row_mask);
    col_grad = convolve(img, col_mask);
    
    edge_detected = combine_row_col_grad(row_grad, col_grad, thresh);

    function combined = combine_row_col_grad(row_grad, col_grad, thresh)
        num_rows = size(row_grad, 1);
        num_cols = size(row_grad, 2);
        combined = zeros(num_rows, num_cols, 'uint8');
        
        for i=1:num_rows
            for j=1:num_cols
                sum_of_squares = double(row_grad(i,j)^2 + col_grad(i,j)^2);
                val = sum_of_squares^(1/2);
                if val > thresh
                    combined(i,j) = 0;
                else
                    combined(i,j) = 255;
                end
            end
        end
    