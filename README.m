% EECS 490 HW 2
% June 6, 2020
% Name: Tucker Guen
% NetworkID: tkg11
% Email: tkg11@case.edu

% Note: The directory structure should be the same as the one provided
% from the zip on canvas:
% > project_dir
%       > Images
%       src_file1.m
%       src_file2.m
%       . . .

% Where project_dir contains all source files, and /Images contains 
% images to be read
%% 1-a-1 | First Order Derivative Gradient Edge Detection
% M-file name: edge_detect_fod_nopreproc.m
% Usage: edge_detect_fod_nopreproc(img_name, operator, threshold_fraction)
%     img_name = string name of image (exclude "Images/")
%     operator = first order derivative discrete approximation operator
%           options: pixel_diff, sep_pixel_diff, roberts, sobel, frei_chen, prewitt
%     threshold_fraction = fraction (0-1) of pixels considered background
%           based on derivative value 
%           Ex:
%               0.75 = consider bottom 75% of pixel derivative values to be
%                background pixels
%               0 = include all pixel derivative values
%               1 = exclude all pixel derivative values
% Output image: "Images/OUT_edge_detect_fod_nproc" + img_name
% Parameters: operator=prewitt, thresh_frac=0.85
edge_detect_fod_nopreproc("building.raw", "prewitt", 0.75);
edge_detect_fod_nopreproc("building_noise.raw", "prewitt", 0.75);

%% 1-a-2 | Second Order Derivative Gradient Edge Detection
% M-file name: edge_detect_sod_nopreproc.m
% Usage: edge_detect_sod_nopreproc(img_name, operator, threshold)
%     img_name = string name of image (exclude "Images/")
%     operator = second order derivative discrete approximation operator
%           options: laplacian, prewitt, sep_laplacian
%     threshold_fraction = fraction (0-1) of pixels considered background
%           based on derivative value 
%           Ex:
%               0.75 = consider bottom 75% of pixel derivative values to be
%                background pixels
%               0 = include all pixel derivative values
%               1 = exclude all pixel derivative values
% Output image: "Images/OUT_edge_detect_sod_nproc" + img_name
% Parameters: operator=laplacian, thresh_frac=0.6
edge_detect_sod_nopreproc("building.raw", "laplacian", 0.6);
edge_detect_sod_nopreproc("building_noise.raw", "laplacian", 0.6);

%% 1-b-1 | F.O.D Enhanced
% M-file name: edge_detect_fod_preproc.m
% Usage: edge_detect_fod_preproc(img_name, operator, threshold)
%     img_name = string name of image (exclude "Images/")
%     operator = first order derivative discrete approximation operator
%           options: pixel_diff, sep_pixel_diff, roberts, sobel, frei_chen, prewitt
%     threshold_fraction = fraction (0-1) of pixels considered background
%           based on derivative value 
%           Ex:
%               0.75 = consider bottom 75% of pixel derivative values to be
%                background pixels
%               0 = include all pixel derivative values
%               1 = exclude all pixel derivative values
% Output image: "Images/OUT_edge_detect_fod_proc_contrast" + img_name
%               "Images/OUT_edge_detect_fod_proc_noise" + img_name
% Parameters: operator=prewitt, thresh_frac=0.85
edge_detect_fod_preproc_contrast("building.raw", "prewitt", 0.75);
edge_detect_fod_preproc_noise("building_noise.raw", "prewitt", 0.75);

%% 1-b-2 | S.O.D Enhanced
% M-file name: edge_detect_sod_preproc.m
% Usage: edge_detect_sod_preproc(img_name, operator, threshold)
%     img_name = string name of image (exclude "Images/")
%     operator = second order derivative discrete approximation operator
%           options: laplacian, prewitt, sep_laplacian
%     threshold_fraction = fraction (0-1) of pixels considered background
%           based on derivative value 
%           Ex:
%               0.75 = consider bottom 75% of pixel derivative values to be
%                background pixels
%               0 = include all pixel derivative values
%               1 = exclude all pixel derivative values
% Output image: "Images/OUT_edge_detect_sod_proc_contrast" + img_name
%               "Images/OUT_edge_detect_sod_proc_noise" + img_name
% Parameters: operator=laplacian, thresh_frac=0.6
edge_detect_sod_preproc_contrast("building.raw", "laplacian", 0.6);
edge_detect_sod_preproc_noise("building_noise.raw", "laplacian", 0.6);

%% 2-a | Shrinking - Morphological Image Processing
% M-file name: shrink_patterns_pcb.m
% Usage: shrink_patterns_pcb(num_iterations)
%       num_iterations = number of times to apply shrink morph operation
% Output image: "Images/OUT_shrunk_patterns.raw"
%               "Images/OUT_shrunk_pcb.raw"
% Parameters: num_iterations=2
shrink_patterns_pcb(2);

%% 2-b | Thinning - Morphological Image Processing
% M-file name: thin_patterns_pcb.m
% Usage: thin_patterns_pcb(num_iterations)
%       num_iterations = number of times to apply thinning morph operation
% Output image: "Images/OUT_thinned_patterns.raw"
%               "Images/OUT_thinned_pcb.raw"
% Parameters: num_iterations=4
thin_patterns_pcb(4);

%% 2-c | Skeletonizing - Morphological Image Processing
% M-file name: skeletonize_patterns_pcb.m
% Usage: skeletonize_patterns_pcb(num_iterations)
%       num_iterations = number of times to apply skeletonize morph operation
% Output images: "Images/OUT_skeleton_patterns.raw"
%               "Images/OUT_skeleton_pcb.raw"
% Parameters: num_iterations=8
skeletonize_patterns_pcb(8);

%% 3-a | Fixed Threshold Dithering - Digital Halftoning
% M-file name: fixed_thresh_dither_barbara.m
% Usage: fixed_thresh_dither_barbara()
% Output image: "Images/OUT_fixed_dither_barbara.raw"
% Parameters: None
fixed_thresh_dither_barbara();

%% 3-b | Random Dithering - Digital Halftoning
% M-file name: random_dither_barabara.m
% Usage: random_dither_barabara()
% Output image: "Images/OUT_rand_dither_barbara.raw"
% Parameters: None
random_dither_barabara();

%% 3-c | Dithering Matrix (Pattern) - Digital Halftoning
% M-file name: dither_matrix_barbara.m
% Usage: dither_matrix_barbara()
% Output images: "Images/OUT_mat_dither_2L2x2_barbara.raw"
%                "Images/OUT_mat_dither_2L4x4_barbara.raw"
%                "Images/OUT_mat_dither_4L2x2_barbara.raw"
%                "Images/OUT_mat_dither_4L4x4_barbara.raw"
% Parameters: None
dither_matrix_barbara();

%% 3-d | Floyd-Steinberg's Error Diffusion w/ Serpentine Scanning
% - Digital Halftoning
% M-file name: floyd_steinberg_barbara.m
% Usage: floyd_steinberg_barbara()
% Output images: "Images/OUT_floyd_steinberg_dither_barbara.raw"
% Parameters: None
floyd_steinberg_barbara();