function unconditional_table = get_skeleton_unconditional_table
    % Skeletonize
    % Spur
    unconditional_table(:, :, 177) = [0 0 0; 0 1 0; 0 0 1]; 
    unconditional_table(:, :, 178) = [0 0 0; 0 1 0; 1 0 0];
    unconditional_table(:, :, 179) = [0 0 1; 0 1 0; 0 0 0];
    unconditional_table(:, :, 180) = [1 0 0; 0 1 0; 0 0 0];

    % Single 4-Connection
    unconditional_table(:, :, 181) = [0 0 0; 0 1 0; 0 1 0];
    unconditional_table(:, :, 182) = [0 0 0; 0 1 1; 0 0 0];
    unconditional_table(:, :, 183) = [0 0 0; 1 1 0; 0 0 0];
    unconditional_table(:, :, 184) = [0 1 0; 0 1 0; 0 0 0];

    % L Corner
    unconditional_table(:, :, 185) = [0 1 0; 0 1 1; 0 0 0];
    unconditional_table(:, :, 186) = [0 1 0; 1 1 0; 0 0 0];
    unconditional_table(:, :, 187) = [0 0 0; 0 1 1; 0 1 0];
    unconditional_table(:, :, 188) = [0 0 0; 1 1 0; 0 1 0];

    % Corner Cluster
    unconditional_table(:, :, 189) = [1 1 0; 1 1 0; 0 0 0]; 
    unconditional_table(:, :, 190) = [0 0 0; 0 1 1; 0 1 1];
    unconditional_table(:, :, 191) = [1 1 1; 1 1 1; 1 1 1];

    % Tee Branch
    unconditional_table(:, :, 192) = [0 1 0; 1 1 1; 0 0 0];
    unconditional_table(:, :, 193) = [0 1 0; 1 1 0; 0 1 0];
    unconditional_table(:, :, 194) = [0 0 0; 1 1 1; 0 1 0];
    unconditional_table(:, :, 195) = [0 1 0; 0 1 1; 0 1 0];

    % Vee Branch
    unconditional_table(:, :, 196) = [1 0 1; 0 1 0; 0 0 1];
    unconditional_table(:, :, 197) = [1 1 1; 1 1 1; 0 0 1];
    unconditional_table(:, :, 198) = [1 0 1; 0 1 0; 0 1 0];
    unconditional_table(:, :, 199) = [1 1 1; 1 1 1; 0 1 0];
    unconditional_table(:, :, 200) = [1 0 1; 0 1 0; 0 1 1];
    unconditional_table(:, :, 201) = [1 1 1; 1 1 1; 0 1 1];
    unconditional_table(:, :, 202) = [1 0 1; 0 1 0; 1 0 0];
    unconditional_table(:, :, 203) = [1 1 1; 1 1 1; 1 0 0];
    unconditional_table(:, :, 204) = [1 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 205) = [1 1 1; 1 1 1; 1 0 1];
    unconditional_table(:, :, 206) = [1 0 1; 0 1 0; 1 1 0];
    unconditional_table(:, :, 207) = [1 1 1; 1 1 1; 1 1 0];
    unconditional_table(:, :, 208) = [1 0 1; 0 1 0; 1 1 1];
    unconditional_table(:, :, 209) = [1 1 1; 1 1 1; 1 1 1];

    unconditional_table(:, :, 210) = [1 0 1; 0 1 0; 1 0 0];
    unconditional_table(:, :, 211) = [1 1 1; 1 1 0; 1 1 0];
    unconditional_table(:, :, 212) = [1 0 0; 0 1 1; 1 0 0];
    unconditional_table(:, :, 213) = [1 1 0; 1 1 1; 1 1 0];
    unconditional_table(:, :, 214) = [1 0 1; 0 1 1; 1 0 0];
    unconditional_table(:, :, 215) = [1 1 1; 1 1 1; 1 1 0];
    unconditional_table(:, :, 216) = [1 0 0; 0 1 0; 1 0 1];
    unconditional_table(:, :, 217) = [1 1 0; 1 1 0; 1 1 1];
    unconditional_table(:, :, 218) = [1 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 219) = [1 1 1; 1 1 0; 1 1 1];
    unconditional_table(:, :, 220) = [1 0 0; 0 1 1; 1 0 1];
    unconditional_table(:, :, 221) = [1 1 0; 1 1 1; 1 1 1];
    unconditional_table(:, :, 222) = [1 0 1; 0 1 1; 1 0 1];
    unconditional_table(:, :, 223) = [1 1 1; 1 1 1; 1 1 1];

    unconditional_table(:, :, 224) = [1 0 0; 0 1 0; 1 0 1];
    unconditional_table(:, :, 225) = [1 0 0; 1 1 1; 1 1 1];
    unconditional_table(:, :, 226) = [0 1 0; 0 1 0; 1 0 1];
    unconditional_table(:, :, 227) = [0 1 0; 1 1 1; 1 1 1];
    unconditional_table(:, :, 228) = [1 1 0; 0 1 0; 1 0 1];
    unconditional_table(:, :, 229) = [1 1 0; 1 1 1; 1 1 1];
    unconditional_table(:, :, 230) = [0 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 231) = [0 0 1; 1 1 1; 1 1 1];
    unconditional_table(:, :, 232) = [1 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 233) = [1 0 1; 1 1 1; 1 1 1];
    unconditional_table(:, :, 234) = [0 1 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 235) = [0 1 1; 1 1 1; 1 1 1];
    unconditional_table(:, :, 236) = [1 1 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 237) = [1 1 1; 1 1 1; 1 1 1]; 

    unconditional_table(:, :, 238) = [0 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 239) = [0 1 1; 0 1 1; 1 1 1];
    unconditional_table(:, :, 240) = [0 0 1; 1 1 0; 0 0 1];
    unconditional_table(:, :, 241) = [0 1 1; 1 1 1; 0 1 1];
    unconditional_table(:, :, 242) = [0 0 1; 1 1 0; 1 0 1];
    unconditional_table(:, :, 243) = [0 1 1; 1 1 1; 1 1 1];
    unconditional_table(:, :, 244) = [1 0 1; 0 1 0; 0 0 1];
    unconditional_table(:, :, 245) = [1 1 1; 0 1 1; 0 1 1];
    unconditional_table(:, :, 246) = [1 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 247) = [1 1 1; 0 1 1; 1 1 1];
    unconditional_table(:, :, 248) = [1 0 1; 1 1 0; 0 0 1];
    unconditional_table(:, :, 249) = [1 1 1; 1 1 1; 0 1 1];
    unconditional_table(:, :, 250) = [1 0 1; 1 1 0; 1 0 1];
    unconditional_table(:, :, 251) = [1 1 1; 1 1 1; 1 1 1]; 

    % Diagonal Branch
    unconditional_table(:, :, 252) = [0 1 0; 0 1 1; 1 0 0];
    unconditional_table(:, :, 253) = [0 1 0; 1 1 0; 0 0 1];
    unconditional_table(:, :, 254) = [0 0 1; 1 1 0; 0 1 0];
    unconditional_table(:, :, 255) = [1 0 0; 0 1 1; 0 1 0];
    unconditional_table(:, :, 256) = [1 1 0; 0 1 1; 1 0 1];
    unconditional_table(:, :, 257) = [0 1 1; 1 1 0; 1 0 1];
    unconditional_table(:, :, 258) = [1 0 1; 1 1 0; 0 1 1];
    unconditional_table(:, :, 259) = [1 0 1; 0 1 1; 1 1 0];