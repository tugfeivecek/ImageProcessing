function s1 = piecewiseTransform1(r1 , C, D, s_top,s_under)
    if(r1 > C && r1 < D)
        s1 = s_top;
    else 
        s1=s_under;
    end
end

