function s2 = piecewiseTransform2(r2 , C, D, s_top,s_under)
    if(r2 > C && r2 < D)
        s2 = s_top;
    else 
        s2=s_under;
    end
end

