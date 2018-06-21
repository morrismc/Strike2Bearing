function [ Bearing ] = Quadrant2Bearing( Quadrant )
% This function was designed by Matthew Morriss
% 08/25/17 08/25/17; 09:21:23: AM.

%The primary use for this function is to take quadrant compass measurements
%and convert them into -90 (w) to 90(E) bearing measurements.  This could
%be accomplished by importing your data into Stereonet by Rich
%Allmendinger; however, if you've imported a spreadsheet with other data
%and strike happens to be one of the measures than it's maybe easier just
%to do as much as you can in Matlab.

% INPUT

%   % A single entry string that is the Quadrant strike measure (i.e. 'N40W')
% To run this code for many measurements the function can be called within
% a for loop.
Bearing = NaN;
Quadrant = journalOreo{:};



       
if isnan(Quadrant)
    Bearing = NaN;
%     disp('Nan logical');;
    return
end  

if length(Quadrant) > 4
    Bearing = NaN;
    return
end
     
        
 
    if isequal(str2num(Quadrant(1)),[])
            if strcmp(Quadrant(1:2),'NS')
                
                Bearing = 0; %degrees CW from North
                return
            elseif strcmp(Quadrant(1:2),'EW')
                Bearing = 90; %degrees CW from North
                return
                
            elseif strcmp(Quadrant(1:2),'NW');
                Bearing = -45;
                return
            elseif strcmp(Quadrant(1:2),'SE');
                Bearing = -45;
                return
            elseif strcmp(Quadrant(1:2),'NE');
                Bearing = 45;
                return
            elseif strcmp(Quadrant(1:3),'NNE');
                Bearing = 22.5;
                return
            elseif strcmp(Quadrant(1:3),'NNW');
                Bearing = -22.5;
                return
            end
            
    end
    
    
    if strcmp(Quadrant(1),'N')
           
            if strcmp(Quadrant(3),'E')
                Bearing = str2num(Quadrant(2)); %degrees CW from North
                return
                
            elseif length(Quadrant)>3 && strcmp(Quadrant(4),'E')
                Bearing = str2num(Quadrant(2:3)); %degrees CW from North
                return
                
            elseif strcmp(Quadrant(3),'W')
                
                Bearing = -str2num(Quadrant(2)); %degrees CW from North
                return
                
            elseif length(Quadrant)>3&&strcmp(Quadrant(4),'W')
                
                Bearing = -str2num(Quadrant(2:3)); %degrees CW from North
                return
                
            end
    
    end 
            
    if strcmp(Quadrant(1),'S')   
            
            if strcmp(Quadrant(3),'E')
                Bearing = -str2num(Quadrant(2)); %degrees CW from North
                return
                
            elseif length(Quadrant)>3&&strcmp(Quadrant(4),'E')
                Bearing = -str2num(Quadrant(2:3)); %degrees CW from North 
                return
                
            elseif strcmp(Quadrant(3),'W')
                Bearing = str2num(Quadrant(2)); %degrees CW from North
                return
                
            elseif length(Quadrant)>3&&strcmp(Quadrant(4),'W')
                Bearing = str2num(Quadrant(2:3)); %degrees CW from North 
                return
            end
    end
        


end

