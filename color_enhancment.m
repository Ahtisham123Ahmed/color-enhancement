img=imread("foggy.jpg");
imshow(img)
%Haze Reduction
%Atmospheric haze can obscure the details in an image.  The imreducehaze function reduces the effects of fog, smoke, and haze
defogg=imreducehaze(img);
montage({img,defogg})


boston = imread("boston_haze.jpg");
boston_dehaze=imreducehaze(boston);
montage({boston,boston_dehaze})
%Snow and frost on objects in an image can have similar effects to atmospheric contaminants.  The imreducehaze function can also improve the visibility in these cases.
snowy1 = imread("mountain1.jpg");
cleared1 = imreducehaze(snowy1);
montage({snowy1, cleared1})

%Brightening Dark Images
% the imlocalbrighten function can increase the apparent lighting of the image to reveal more of the subjects.  The function takes an optional parameter, amount, that determines how much the brightness in increased.  This variable takes values between 0 and 1, with 1 being the default.
darkCity = imread("boston night.jpg");
amount = 0.7;
brightCity = imlocalbrighten(darkCity, amount);
montage({darkCity, brightCity})

darkDog = imread("dash.jpg");

darkDog1 = imrotate(imread("dash.jpg"),-90);
bright_dog=imlocalbrighten(darkDog1);
montage({darkDog1,bright_dog})











