function filtered = morph_filter_2(filter, pattern_id_table)
    num_rows = size(filter, 1);
    num_cols = size(filter, 2);
    
    filtered = filter;
    filter = add_dimensions(filter, 1, 1, 255);
    
    for i=2:num_rows-1
        for j=2:num_cols-1
            subimg = get_subimg(filter, j, i, 3, 3);
            bin_subimg = to_binary(subimg);
            
            id = get_pattern_integer(bin_subimg);
            
            % If the pattern matches a pattern in the lookup table
            if vector_contains(pattern_id_table, id) ...
                && bin_subimg(2,2) ~= 0 ...
                % Mark the pixel as potential removal pixel (0)
                % A hit is a 1 (so that after filter1, during filter2,
                % after inversion id calculations will be correct)
                filtered(i, j) = 0;
            end
        end
    end
        
        %             
%             % invert the image since:
%             % 1. The pattern id tables were created assuming
%             % the "hit" pixels are 1 and "miss" are 0 (patterns
%             % are defined by 1's. 
%             
%             % 2. The integer id formula
%             % assumes that object pixels have value 1, but in
%             % our image they have value 0
%             invert_bin = zeros(3,3,'uint8');
%             for k=1:3
%                 for c=1:3
%                     if bin_subimg(k,c) == 0
%                         invert_bin(k,c)=1;
%                     else
%                         invert_bin(k,c)=0;
%                     end
%                 end
%             end

    