%% Matlab code to encipher and Decipher Caesar Cipher
% By: GG
% This is the demo code which enciphers and Deciphers using caesar cipher
% for all the lower case letters

%% inital command (clearing and closing)
clc
clear all
close all

%% input parameter
xin = input('Enter the cipher key xin_key_26; xin(between 1 and 26):  ' );  % enter the mode of ceaser cipher i.e. xmod26, here x = xin defines the shift
text_to_be_ciphered =input('ENter the text to be ciphered: ');

%% output_ciphered_parameter
ciphered_text = char(rem(text_to_be_ciphered + xin - 97,26)+97) % using the ansii decimal number for small letters which is from 97 to 122 ,...
...  were 97 corresponds a and 122 corresponds z, subtracting 97 results from 0 to 25;  
... and adding xin will provide the shift. remainder after division by 26 will give decimal number from 0 to 25  adding 97 to it corresponds to a to z. 

%% diciphered_text_crptoanyalysis
for pin = 1:26;
diciphered_text = char(rem(ciphered_text-pin - 97 +26,26)+97) % decipher is done in the similar way as encipher only difference is xin is subtracted rather than adding.
end