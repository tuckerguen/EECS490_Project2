function dither_matrix_barbara()
    img = readraw("Images/barbara.raw");
    I2x2 = [ 1 2; 3 0 ];
    I4x4 = [  5  9  6 10;
             13  1 14  2;
              7 11  4  8;
             15  3 12  0 ];
         
    dithered2L2x2 = matrix_dither(img, I2x2);
    dithered2L4x4 = matrix_dither(img, I4x4);
    writeraw(dithered2L2x2, "Images/OUT_mat_dither_2L2x2_barbara.raw");
    writeraw(dithered2L4x4, "Images/OUT_mat_dither_2L4x4_barbara.raw");
    project_showpair(dithered2L2x2, dithered2L4x4, ...
        "Images/barbara.raw", "matrix dither 2 intensity levels");
    
    dithered4L2x2= matrix_dither_4Ilvl(img, I2x2);
    dithered4L4x4= matrix_dither_4Ilvl(img, I4x4);
    writeraw(dithered4L2x2, "Images/OUT_mat_dither_4L2x2_barbara.raw");
    writeraw(dithered4L4x4, "Images/OUT_mat_dither_4L4x4_barbara.raw");
    project_showpair(dithered4L2x2, dithered4L4x4, ...
        "Images/barbara.raw", "matrix dither 4 intensity levels");