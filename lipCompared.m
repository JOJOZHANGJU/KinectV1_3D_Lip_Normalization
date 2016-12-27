WD = load('LJU3WB.mat');
SD = load('LJU6SB.mat');
Weak = WD.LJU3WB;
Strong = SD.LJU6SB;


WO = [(Weak(3,1)+Weak(7,1))/2,(Weak(3,2)+Weak(7,2))/2,(Weak(3,3)+Weak(7,3))/2];
ST = [(Strong(3,1)+Strong(7,1))/2,(Strong(3,2)+Strong(7,2))/2,(Strong(3,3)+Strong(7,3))/2];


TM = WO - ST;
TMM = repmat(TM,18,1);

TargetLip = Weak - TMM;
 
x1 = Strong(:,1);
y1 = Strong(:,2);
z1 = Strong(:,3);

%strong
% sw = sqrt((x1(9)- x1(15))^2);
% s9 = x1(9)
% s15 = x1(15)
% 
% sh = sqrt((y1(12)- y1(17))^2);
% s12 = y1(12)
% s17 = y1(17)
sc = sqrt((z1(11)- 0)^2);
sp = sqrt((z1(9)- 0)^2);

x11 = TargetLip(:,1);
y11 = TargetLip(:,2);
z11 = TargetLip(:,3);

%weak
% ww = sqrt((x11(9)- x11(15))^2);
% w9 = x11(9)
% w15 = x11(15)
% 
% wh = sqrt((y11(12)- y11(17))^2);
% w12 = y11(12)
% w17 = y11(17)

wc = sqrt((z11(11)- 0)^2);
wp = sqrt((z11(9)- 0)^2);


figure;
%grid;
hold on;

%Red Strong
plot3([x1(1:8);x1(1)],[z1(1:8);z1(1)],[y1(1:8);y1(1)],':','color',[1,0,0],'linewidth',2);
plot3([x1(9:18);x1(9)],[z1(9:18);z1(9)],[y1(9:18);y1(9)],'-','color',[1,0,0],'linewidth',2);
% legend('ÇúÏß1');
% for k1 = 1:18
%  text(x1(k1),z1(k1),y1(k1),{k1});
% end
%Blue Weak
plot3([x11(1:8);x11(1)],[z11(1:8);z11(1)],[y11(1:8);y11(1)],':','color',[0,0,1],'linewidth',2);
plot3([x11(9:18);x11(9)],[z11(9:18);z11(9)],[y11(9:18);y11(9)],'-','color',[0,0,1],'linewidth',2);
axis tight
% axis([min(x1) max(x1) min(z1,z11) max(z1,z11) min(y1,y11) max(y1,y11)]);
% for k2 = 1:18
%  text(x11(k2),z11(k2),y11(k2),{k2});
% end
% legend('ÇúÏß2');



