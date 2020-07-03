function createVeeBranchPatterns()
    id = 80;
    for a=0:1
        for b=0:1
            for c=0:1
                for d=0:1
                    if a~=0 || b~=0 || c~=0
                        fprintf("uncond_mark_table(:,:,%d)  = [ %d %d 1; %d 1 %d; %d %d 1 ];\n" ...
                            , id, a,d,b,d,c,d);
                        id = id + 1;
                    end
                end
            end
        end
    end