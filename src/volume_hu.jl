"""
    volume_hu(I, V, S_BG, S_O)
    volume_hu(vol, S_BG, S_OBJ)

Calculates the mass of a known material given a CT volume segment.

# Arguments
- vol: segmented CT volume
- I: sum of total volume segment
- V: total volume of segment
    if voxels are 1 cm^3, then `V = length(vol)`
- S_BG: intensity of known background voxels
- S_O: intensity of known object voxels

# Citation
'Accurate quantification of vessel cross-sectional area using CT
angiography: a simulation study' [Molloi, Johnson, Ding, Lipinski] 
(DOI: 10.1007/s10554-016-1007-9)
"""
function volume_hu(vol, S_BG, S_O)
	I = sum(vol)
	V = length(vol)
	Vₒ = (I - (V * S_BG)) / (S_O - S_BG)
	return Vₒ
end

function volume_hu(I, V, S_BG, S_O)
	Vₒ = (I - (V * S_BG)) / (S_O - S_BG)
	return Vₒ 
end