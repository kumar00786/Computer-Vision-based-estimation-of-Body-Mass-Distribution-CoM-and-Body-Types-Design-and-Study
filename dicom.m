
I = dicomread('CT-MONO2-16-ankle.dcm');
info = dicominfo('CT-MONO2-16-ankle.dcm');
I = dicomread(info);
info2 = dicominfo('ankle.dcm');
dicomwrite(I,'ankle.dcm')