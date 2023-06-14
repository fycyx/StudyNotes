clear all % 清除ws所有变量
clc % 清除cmd所有命令
%% 也是注释 

str = 'matlab'

len = length(str)

abs('a') % as 97

A = [1,2,3;4,5,6;7,8,10]
A = A' % 转置
% A = A(:) % 列输出
A = inv(A) %求逆

A * inv(A)

A = zeros(5,5,3)

A(:,:,1)

%% 数组
clear all
clc

c = cell(1,6)
c{1} = eye(3) % 赋值

c{2} = magic(4)

%% 结构体(字典)
clear all
clc

l = {'li','chen'}
key = 'name'
s = struct(key,{l})

s.name{1}

%% 矩阵操作
clear all
clc

A = [1,2,3,4,5,6] % 1*6 矩阵
B = 1 : 3 : 9 %从1开始步进2到9
C = repmat(B,3,2)
D = ones(2,4)
E = [4,5,6,7;4,5,7,7]
F = D / E % D * inv(E)
G = D ./ E % 对应项相除

clear all
clc

A = magic(5)
A(2,3)
A(3,:)

[m,n] = find(A >= 20)

A = [4,1,2,3,5,6,8,7]
[m,n] = find(A > 5)


%% 控制 

clear all
clc

n = 0
for i = 1 : 1 :4
    n = n + i
end    

n = 0
i = 4
while i > 0
    n = n + i
    i = i-1
end


n = 1

if n == 0
    n = 10
else
    n = 20
end 

n = 1
switch n
    case 1
        n = n * 10
    case 2 
        n = n * 20
    otherwise
        n = 0 
end

%% 绘图

clear all
clc

x = 0:0.01:2*pi
y = sin(x) 

figure % 1.新建一个幕布
plot(x,y) % 2.绘制xy点
title('y = sin(x)') % 标题
xlabel('x') % x轴
ylabel('sin(x)') % y轴
xlim([0,2*pi]) % 限制x范围 0 - 2pi


