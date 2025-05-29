function M = rotationMatrix(theta,phi,opt)
% generate a 3D rotation matrix, through angle 'theta' and 'phi'
% inputs should be in radians (default), or specify inputs in degrees by using a 3rd input 'deg'
    
    if (nargin < 2)
        phi = 0;
    end
    if (nargin < 3)
        opt = 'rad';                    % or 'deg'
    end
    if strcmp(opt,'deg')
        % My = [cosd(phi) 0 sind(phi); 0 1 0; -sind(phi) 0 cosd(phi)]; 
        Mx = [ 1 0 0; 0 cosd(phi) -sind(phi); 0 sind(phi) cosd(phi)];
        Mz = [cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1];
    else
        % My = [cos(phi) 0 sin(phi); 0 1 0; -sin(phi) 0 cos(phi)]; 
        Mx = [ 1 0 0; 0 cos(phi) -sin(phi); 0 sin(phi) cos(phi)];
        Mz = [cos(theta) -sin(theta) 0; sin(theta) cos(theta) 0; 0 0 1];
    end
    M = Mz * Mx;
end
