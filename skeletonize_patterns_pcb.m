function skeletonize_patterns_pcb(num_iterations)
    patterns = readraw("Images/patterns.raw");
    skeleton_patterns = morph(patterns, 4, 'skeletonize');
    writeraw(skeleton_patterns, "Images/OUT_skeleton_patterns.raw");
    project_show(skeleton_patterns, "Images/patterns.raw", ...
        "skeletonized: " + num_iterations + " iterations");

    pcb = readraw("Images/pcb.raw");
    skeleton_pcb = morph(pcb, 4, 'skeletonize');
    writeraw(skeleton_pcb, "Images/OUT_skeleton_pcb.raw");
    project_show(skeleton_pcb, "Images/pcb.raw", ...
        "skeletonized: " + num_iterations + " iterations");
