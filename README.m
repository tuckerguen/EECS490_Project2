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

% TODO: Add a programatic calculation of threshold value

%% 1-a-1 | First Order Derivative Gradient Edge Detection
% M-file name: edge_detect_fod_nopreproc.m
% Usage: edge_detect_fod_nopreproc(img_name, operator, threshold)
% Output image: "Images/OUT_edge_detect_fod_nproc" + img_name
% Parameters: operator=prewitt, thresh = 10
edge_detect_fod_nopreproc("building.raw", "prewitt", 10);
edge_detect_fod_nopreproc("building_noise.raw", "prewitt", 10);

%% 1-a-2 | Second Order Derivative Gradient Edge Detection
% M-file name: edge_detect_sod_nopreproc.m
% Usage: edge_detect_sod_nopreproc(img_name, operator, threshold)
% Output image: "Images/OUT_edge_detect_sod_nproc" + img_name
% Parameters: operator=laplacian, thresh = 20, 170
edge_detect_sod_nopreproc("building.raw", "laplacian", 20);
edge_detect_sod_nopreproc("building_noise.raw", "laplacian", 170);

%% 1-b-1 | F.O.D Enhanced
% M-file name: edge_detect_fod_preproc.m
% Usage: edge_detect_fod_preproc(img_name, operator, threshold)
% Output image: "Images/OUT_edge_detect_fod_proc" + img_name
% Parameters: operator=prewitt, thresh = 15.8
edge_detect_fod_preproc("building.raw", "prewitt", 15.8);
edge_detect_fod_preproc("building_noise.raw", "prewitt", 15.8);

%% 1-b-2 | S.O.D Enhanced
% M-file name: edge_detect_sod_preproc.m
% Usage: edge_detect_sod_preproc(img_name, operator, threshold)
% Output image: "Images/OUT_edge_detect_sod_proc" + img_name
% Parameters: operator=laplacian, thresh = 20, 170
edge_detect_sod_preproc("building.raw", "laplacian", 20);
edge_detect_sod_preproc("building_noise.raw", "laplacian", 170);

%% 2-a | Shrinking - Morphological Image Processing
% M-file name: shrink_patterns_pcb.m
% Usage: shrink_patterns_pcb(num_iterations)
% Output image: "Images/OUT_shrunk_patterns.raw"
%               "Images/OUT_shrunk_pcb.raw"
% Parameters: num_iterations=4
shrink_patterns_pcb(4);

%% 2-b | Thinning - Morphological Image Processing
% M-file name: thin_patterns_pcb.m
% Usage: thin_patterns_pcb(num_iterations)
% Output image: "Images/OUT_thinned_patterns.raw"
%               "Images/OUT_thinned_pcb.raw"
% Parameters: num_iterations=4
thin_patterns_pcb(4);

%% 2-c | Skeletonizing - Morphological Image Processing
% M-file name: skeletonize_patterns_pcb.m
% Usage: skeletonize_patterns_pcb(num_iterations)
% Output images: "Images/OUT_skeleton_patterns.raw"
%               "Images/OUT_skeleton_pcb.raw"
% Parameters: num_iterations=4
skeletonize_patterns_pcb(4);

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