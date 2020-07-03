% TODO: Add a programatic calculation of threshold value

%% 1-a-1 | First Order Derivative Gradient Edge Detection
edge_detect_fod_nopreproc("Images/building.raw", "prewitt", 10);

%% 1-a-2 | Second Order Derivative Gradient Edge Detection
edge_detect_sod_nopreproc("Images/building.raw", "laplacian", 20);
edge_detect_sod_nopreproc("Images/building_noise.raw", "laplacian", 170);
%% 1-b-1 | F.O.D Enhanced
edge_detect_fod_preproc("Images/building.raw", "prewitt", 15.8);
% edge_detect_fod_preproc("Images/building_noise.raw", "prewitt", 10);
%% 1-b-2 | S.O.D Enhanced
edge_detect_sod_preproc("Images/building.raw", "laplacian", 10);
edge_detect_sod_preproc("Images/building_noise.raw", "laplacian", 45);
edge_detect_sod_nopreproc("Images/building.raw", "laplacian", 20);
edge_detect_sod_nopreproc("Images/building_noise.raw", "laplacian", 170);
%% 2-a | Shrinking - Morphological Image Processing
patterns = readraw("Images/patterns.raw");
shrunk_patterns = morph(patterns, 4, 'shrink');

figure(1);
imshow(shrunk_patterns);

pcb = readraw("Images/pcb.raw");
shrunk_pcb = morph(pcb, 4, 'shrink');
figure(2);
imshow(shrunk_pcb);
%% 2-b | Thinning - Morphological Image Processing
patterns = readraw("Images/patterns.raw");
thinned_pattern = morph(patterns, 4, 'thin');
imshow(thinned_pattern);

pcb = readraw("Images/pcb.raw");
thinned_pcb = morph(pcb, 4, 'thin');
figure(2);
imshow(thinned_pcb);

%% 2-c | Skeletonizing - Morphological Image Processing
patterns = readraw("Images/patterns.raw");
skeleton_patterns = morph(patterns, 4, 'skeletonize');
imshow(skeleton_patterns);

pcb = readraw("Images/pcb.raw");
skeleton_pcb = morph(pcb, 4, 'skeletonize');
figure(2);
imshow(skeleton_pcb);


%% 3-a | Fixed Threshold Dithering - Digital Halftoning
img = readraw("Images/barbara.raw");
h = myhist(img);
c = cum_dist(h);
thresh = S100;
for i=1:size(c,1)
    if c(i) > (size(img,1)*size(img,2))/2.0
        thresh = i
        break;
    end
end
dithered = fixed_thresh_dithering(img, thresh);
imshow(dithered);

%% 3-b | Random Dithering - Digital Halftoning
img = readraw("Images/barbara.raw");
dithered = random_dithering(img);
imshow(dithered);

%% 3-c | Dithering Matrix (Pattern) - Digital Halftoning
img = readraw("Images/barbara.raw");
I2x2 = [1 2; 3 0];
I4x4 = [  5  9  6 10;
         13  1 14  2;
          7 11  4  8;
         15  3 12  0];
dithered = matrix_dither(img, I2x2);
dithered4Ilvl = matrix_dither_4Ilvl(img, I2x2);
figure(1);
imshow(dithered);
figure(2);
imshow(dithered4Ilvl);

%% 3-d | Floyd-Steinberg's Error Diffusion w/ Serpentine Scanning
% - Digital Halftoning
img = readraw("Images/barbara.raw");
dithered = floyd_steinberg_dither(img);
imshow(dithered);