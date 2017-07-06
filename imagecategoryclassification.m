% % Location of the compressed data set
% url = 'http://www.vision.caltech.edu/Image_Datasets/Caltech101/101_ObjectCategories.tar.gz';
% % Store the output in a temporary folder
% outputFolder = fullfile(tempdir, 'caltech101'); 
% if ~exist(outputFolder, 'dir') % download only once
%     disp('Downloading 126MB Caltech101 data set...');
%     untar(url, outputFolder);
% end
rootFolder = fullfile(pict, '101_ObjectCategories');
categories = {'airplanes', 'ferry', 'laptop'};
imds = imageDatastore(fullfile(rootFolder, categories), 'LabelSource', 'foldernames');
tbl = countEachLabel(imds)

minSetCount = min(tbl{:,2}); % determine the smallest amount of images in a category

% Use splitEachLabel method to trim the set.
imds = splitEachLabel(imds, minSetCount, 'randomize');

% Notice that each set now has exactly the same number of images.
countEachLabel(imds)

[trainingSet, validationSet] = splitEachLabel(imds, 0.3, 'randomize');


% Find the first instance of an image for each category
airplanes = find(trainingSet.Labels == 'airplanes', 1);
ferry = find(trainingSet.Labels == 'ferry', 1);
laptop = find(trainingSet.Labels == 'laptop', 1);

% figure

subplot(1,3,1);
imshow(readimage(trainingSet,airplanes))
subplot(1,3,2);
imshow(readimage(trainingSet,ferry))
subplot(1,3,3);
imshow(readimage(trainingSet,laptop))


bag = bagOfFeatures(trainingSet);


img = readimage(imds, 1);
featureVector = encode(bag, img);

% Plot the histogram of visual word occurrences
figure
bar(featureVector)
title('Visual word occurrences')
xlabel('Visual word index')
ylabel('Frequency of occurrence')

categoryClassifier = trainImageCategoryClassifier(trainingSet, bag);


confMatrix = evaluate(categoryClassifier, trainingSet);


confMatrix = evaluate(categoryClassifier, validationSet);

% Compute average accuracy
mean(diag(confMatrix));


img = imread(fullfile(rootFolder, 'airplanes', 'image_0690.jpg'));
[labelIdx, scores] = predict(categoryClassifier, img);

% Display the string label
categoryClassifier.Labels(labelIdx)