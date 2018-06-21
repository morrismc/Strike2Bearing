function [ Bearing ] = Azimuth2Bearing( Strike )
% I have written this function to take strike data typically exported by a
% geologic plotting software and try to change the scale so that the data
% now will be scaled -90 (due west) to 90 (due east)


% Written by Matthew Morriss

% INPUT:
%  Strike Data in azimuth form, ranging from 0 - 360
% Strike data must be formatted as an array


Bearing = zeros(length(Strike),1);

for i = 1:length(Strike)
    if Strike(i) <= 90 & Strike(i) >= 0
        Bearing(i) = Strike(i);
    
    elseif Strike(i) >= 270 & Strike(i) <= 360
        Bearing(i) = Strike(i) - 360;
        
    elseif Strike(i) <= 269 & Strike(i) >= 180
        Bearing(i) = Strike(i) - 180;
        
    else
        Bearing(i) = Strike(i) - 180;
    end
    
        
        
end
    Bearing;


end

