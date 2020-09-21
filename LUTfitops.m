function op_fit_maps = LUTfitops(cal_roi, wv)
load('.\lut\dense_LUT_g_0p9.mat', 'LUT');
for i=1:length(wv)
    disp(['Processing ' num2str(wv(i)) ' nm...']);
    op_fit_maps(:,:,i,1)=griddata(LUT.M1, LUT.M2, LUT.Mua,double(squeeze(cal_roi(:,:,i,1))),double(squeeze(cal_roi(:,:,i,2))),'nearest');
    op_fit_maps(:,:,i,2)=griddata(LUT.M1, LUT.M2, LUT.Musp,double(squeeze(cal_roi(:,:,i,1))),double(squeeze(cal_roi(:,:,i,2))),'nearest');
end
end
