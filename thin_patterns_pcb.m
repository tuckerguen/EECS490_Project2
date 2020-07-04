function thin_patterns_pcb(num_iterations)
    patterns = readraw("Images/patterns.raw");
    thinned_pattern = morph(patterns, 4, 'thin');
    writeraw(thinned_pattern, "Images/OUT_thinned_patterns.raw");
    project_show(thinned_pattern, "Images/patterns.raw", ...
    "thinned: " + num_iterations + " iterations");

    pcb = readraw("Images/pcb.raw");
    thinned_pcb = morph(pcb, 4, 'thin');
    writeraw(thinned_pcb, "Images/OUT_thinned_pcb.raw");
    project_show(thinned_pcb, "Images/pcb.raw", ...
    "thinned: " + num_iterations + " iterations");