function morphed = morph(img, num_iterations, method)
    % Init filter 2 as original image, for 1st iteration
    % invert the image since the pattern recognition assumes
    % object pixels have value 1 and background is 0,
    % but input image is the opposite
    result = invert_bin_image(img);

    % Get the table of conditional hit pattern ids
    % Get the table of unconditional hit pattern ids
    switch method
        case 'shrink'
            cond_pattern_table = get_shrink_conditional_table();
            uncond_pattern_table = get_shrink_unconditional_table();
        case 'thin'
            cond_pattern_table = get_thinning_conditional_table();
            uncond_pattern_table = get_thinning_unconditional_table();
        case 'skeletonize'
            cond_pattern_table = get_skeleton_conditional_table();
            uncond_pattern_table = get_skeleton_unconditional_table();
    end
        
    cond_int_table = pattern_table_to_int_vec(cond_pattern_table);
    uncond_int_table = pattern_table_to_int_vec(uncond_pattern_table);
    
    for i=1:num_iterations
        % run filter1 on previous iteration result
        % get the matrix of conditional marks
        filter1 = morph_filter_1(result, cond_int_table);
        % fun filter2 on the new filter1
        filter2 = morph_filter_2(filter1, uncond_int_table);
        result = remove_erasures(result, filter2);
    end
    
    % Revert inversion
    morphed = invert_bin_image(result);
    