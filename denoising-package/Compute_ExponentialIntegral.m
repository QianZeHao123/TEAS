function result = Compute_ExponentialIntegral(s)
result = zeros(length(s),1);
for k = 1:length(s)
    x = s(k,1);
    if x == 0
        result(k,1) = -1e75;
    elseif x >= 1
        result(k,1) = (x^4 + 8.5733287401*x^3 + 18.0590169730*x^2 + 8.6347608925*x + 0.2677737343)/(x^4 + 9.5733223454*x^3 + 25.6329561486*x^2 + 21.0996530827*x + 3.9584969228) + eps;
    elseif x<= 1 && x >= -3
        result(k,1) = 9.999999e-1 - 2.500001e-1*x + 5.555682e-2*x^2 - 1.041576e-2*x^3 +1.664156e-3*x^4 - 2.2335379e-4*x^5 + 2.928433e-5*x^6 - 1.766345e-6*x^7 + 7.122452e-7*x^7 + eps;
    elseif x<=-3 && x >= -9
        result(k,1) = 1 - (248.6697 + 224.4234*x + 32.43665*x^2 + 3.061037*x^3 + 0.05176245*x^4)/(180.7837 + 22.63818*x + 38.93944*x^2 + 3.995161*x^3 + x^4) + eps;
    elseif x <= -9
        result(k,1) = 1 - (674.567029 + 57.4118330*x - 6.05529232*x^2 - x^3)/(1699.06552 + 841.654932*x + 49.3133836*x^2 - 8.01957683*x^3 - 0.999792040*x^4) + eps;
    end
end




