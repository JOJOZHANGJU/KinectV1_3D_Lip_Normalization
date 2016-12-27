LipLoadPath = '92_.txt';
[index,x1,y1,z1] = textread(LipLoadPath,'%f%f%f%f');
H = ones(18,1);
OriginalLip = [x1,y1,z1,H];
OriginalMark = [OriginalLip(9,:);OriginalLip(12,:);OriginalLip(15,:);OriginalLip(17,:)];
T1 = [OriginalMark(1,1),(OriginalMark(1,2)+OriginalMark(3,2))/2,(OriginalMark(1,3)+OriginalMark(3,3))/2,1];
T2 = [(OriginalMark(2,1)+OriginalMark(4,1))/2,OriginalMark(2,2),(OriginalMark(2,3)+OriginalMark(4,3))/2,1];
T3 = [OriginalMark(3,1),(OriginalMark(1,2)+OriginalMark(3,2))/2,(OriginalMark(1,3)+OriginalMark(3,3))/2,1];
T4 = [(OriginalMark(2,1)+OriginalMark(4,1))/2,OriginalMark(4,2),(OriginalMark(2,3)+OriginalMark(4,3))/2,1];

TargetMark = [T1;T2;T3;T4];

TM = inv(OriginalMark)*TargetMark;
TargetLip = OriginalLip*TM;

x11 = TargetLip(:,1);
y11 = TargetLip(:,2);
z11 = TargetLip(:,3);


figure;
grid;
hold on;
plot3([x1(1:8);x1(1)],[z1(1:8);z1(1)],[y1(1:8);y1(1)],'-*','color',[1,0,0],'linewidth',2);
plot3([x1(9:18);x1(9)],[z1(9:18);z1(9)],[y1(9:18);y1(9)],'-*','color',[1,0,0],'linewidth',2);

plot3([x11(1:8);x11(1)],[z11(1:8);z11(1)],[y11(1:8);y11(1)],'-*','color',[0,0,1],'linewidth',2);
plot3([x11(9:18);x11(9)],[z11(9:18);z11(9)],[y11(9:18);y11(9)],'-*','color',[0,0,1],'linewidth',2);

QYXU6SB = TargetLip(:,1:3);
save XXX\CenterFrameSelectiong\QYX\VowelU\6SB\K\QYXU6SB




