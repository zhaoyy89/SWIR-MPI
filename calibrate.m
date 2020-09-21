function cal_reflectance = calibrate(wv,freqs,AC,ACph,CalPh_OP)
load('.\lut\dense_LUT_g_0p71.mat','LUT');
wv_all = CalPh_OP(:,1);
Rd_reference_model_DC = griddata(LUT.Mua, LUT.Musp, LUT.M1, CalPh_OP(:,2), CalPh_OP(:,3), 'nearest');
Rd_reference_model_AC = griddata(LUT.Mua, LUT.Musp, LUT.M2, CalPh_OP(:,2), CalPh_OP(:,3), 'nearest');
Rd_reference_model(:,1) = interp1(wv_all, Rd_reference_model_DC,wv,'pchip', 'extrap');
Rd_reference_model(:,2) = interp1(wv_all, Rd_reference_model_AC,wv,'pchip', 'extrap');
cal_reflectance=zeros(size(AC));
for i=1:length(wv)
    for k=1:length(freqs)
        cal_reflectance(:,:,i,k) = AC(:,:,i,k) ./ ACph(:,:,i,k).* Rd_reference_model(i,k);
    end
end
end