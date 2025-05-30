function rot = makeRotation( theta, phi )
%makeRotation Create a rotation extension
if nargin<1
    error('makeRotation:invalidArguments','Must supply rotation angle(s)');
end
if nargin<2
    phi = 0.0;
end
assert( ( abs(theta) >= 0 ) & ( abs(theta) < 2*pi) , 'makeRotation:invalidTheta',...
        'rotation angle theta (%.2f) is invalid. should be within [0,2*pi] radians',theta);
assert( ( abs(phi) >= 0 ) & ( abs(phi) <= pi) , 'makeRotation:invalidPhi',...
        'rotation angle phi (%.2f) is invalid. should be within [0,pi] radians',phi);

rot.type = 'rot3D';
rot.rotationMatrix = mr.rotationMatrix( theta, phi, 'rad' );

end
    
