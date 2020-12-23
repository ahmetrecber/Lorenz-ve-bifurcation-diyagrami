Npre = 8; Nplot = 100;
x = zeros(Nplot,1);
for r = 2.5:0.005:4.0
  x(1) = 0.9;
  for n = 1:Npre
    x(1) = r*x(1)*(1 - x(1));
  end
  for n = 1:Nplot-1
    x(n+1) = r*x(n)*(1 - x(n));
  end
  plot(r*ones(Nplot,1), x, '.', 'markersize', 2);
  hold on;
end
title('�atallanma diyagram�');
xlabel('r');  ylabel('x_n');
set(gca, 'xlim', [2.5 4.0]);
hold off;
