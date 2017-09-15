function makedir( name )

    if(~exist(name,'dir'))
        mkdir(name);
    end

end

