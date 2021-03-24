

function phone_no = touch_tone_decoder(signal);


signal = TouchToneDialler;
n = length(signal);
dc =  floor(n/2000);
j=1;
k=0;
key=[];

for i=1:1:dc
    
    ind_key = dtmf_decode(signal(j:2000*k+2000));

j=j+2000;
k=k+1;

key=[key ind_key];

end

dtmf_decode(signal);
disp('No of Digits: ');
disp(dc);

disp('Your key: ');
disp(key);
phone_no = key;
