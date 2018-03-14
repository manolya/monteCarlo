
rn=input('Number of points: ');
hits = 0;
hitarr = cell(1, rn);
miss = 0;
missarr = cell(1, rn);
ratio = 0;
for i = 1:rn/8
    % Sample the whole unit cube
    x = rand();
    y = rand(); 
    z = rand();
    % Are we inside the sphere?
    r = x^2 + y^2 + z^2;
    if (r <= 1)
        hits = hits + 1; % We're inside! it's a hit
        hitarr{hits} = [x, y, z] ;
        
    else 
        miss = miss + 1;
        missarr{miss} = [x, y, z];
    end;
    
end% +++
for i = 1:rn/8
    % Sample the whole unit cube
    x = rand();
    y = rand(); 
    z = rand()* -1;
    % Are we inside the sphere?
    r = x^2 + y^2 + z^2;
    if (r <= 1)
        hits = hits + 1; % We're inside! it's a hit
        hitarr{hits} = [x, y, z] ;
        
    else 
        miss = miss + 1;
        missarr{miss} = [x, y, z];
    end;
    
end %++-
for i = 1:rn/8
    % Sample the whole unit cube
    x = rand();
    y = rand() * -1; 
    z = rand();
    % Are we inside the sphere?
    r = x^2 + y^2 + z^2;
    if (r <= 1)
        hits = hits + 1; % We're inside! it's a hit
        hitarr{hits} = [x, y, z] ;
        
    else 
        miss = miss + 1;
        missarr{miss} = [x, y, z];
    end;
    
end %+-+
for i = 1:rn/8
    % Sample the whole unit cube
    x = rand();
    y = rand() * -1; 
    z = rand()* -1;
    % Are we inside the sphere?
    r = x^2 + y^2 + z^2;
    if (r <= 1)
        hits = hits + 1; % We're inside! it's a hit
        hitarr{hits} = [x, y, z] ;
        
    else 
        miss = miss + 1;
        missarr{miss} = [x, y, z];
    end;
    
end% +--
for i = 1:rn/8
    % Sample the whole unit cube
    x = rand() * -1;
    y = rand(); 
    z = rand();
    % Are we inside the sphere?
    r = x^2 + y^2 + z^2;
    if (r <= 1)
        hits = hits + 1; % We're inside! it's a hit
        hitarr{hits} = [x, y, z] ;
        
    else 
        miss = miss + 1;
        missarr{miss} = [x, y, z];
    end;
    
end %-++
for i = 1:rn/8
    % Sample the whole unit cube
    x = rand() * -1;
    y = rand(); 
    z = rand()* -1;
    % Are we inside the sphere?
    r = x^2 + y^2 + z^2;
    if (r <= 1)
        hits = hits + 1; % We're inside! it's a hit
        hitarr{hits} = [x, y, z] ;
        
    else 
        miss = miss + 1;
        missarr{miss} = [x, y, z];
    end;
    
end %-+-
for i = 1:rn/8
    % Sample the whole unit cube
    x = rand() * -1;
    y = rand() * -1; 
    z = rand();
    % Are we inside the sphere?
    r = x^2 + y^2 + z^2;
    if (r <= 1)
        hits = hits + 1; % We're inside! it's a hit
        hitarr{hits} = [x, y, z] ;
        
    else 
        miss = miss + 1;
        missarr{miss} = [x, y, z];
    end;
    
end %--+
for i = 1:rn/8
    % Sample the whole unit cube
    x = rand() * -1;
    y = rand() * -1; 
    z = rand() * -1;
    % Are we inside the sphere?
    r = x^2 + y^2 + z^2;
    if (r <= 1)
        hits = hits + 1; % We're inside! it's a hit
        hitarr{hits} = [x, y, z] ;
        
    else 
        miss = miss + 1;
        missarr{miss} = [x, y, z];
    end;
    
end %---

figure
hold on;     
for kk = 1: hits
   plot3(hitarr{kk}(:,1), hitarr{kk}(:,2), hitarr{kk}(:,3), '.r'); 
end
for ll = 1: miss
   plot3(missarr{ll}(:,1), missarr{ll}(:,2), missarr{ll}(:,3), '.b'); 
end
grid on;
view(3);
ratio = hits/(rn); % This ratio is statistically ~ Volume(quarter sphere) / Volume(cube)
myPi = ratio * 3;