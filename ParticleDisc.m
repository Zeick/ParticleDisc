% Particle discovery timeline
% (C) Timo Kärkkäinen 2020
clear;
% a = alkeishiukkanen, m = mesoni, b = baryoni
valittuLaji = "b";
lightOnly = true;
lajit = ["a";"a";"b";"b";"a";"a";"m";"m";"b";"m";...
         "b";"b";"b";"b";"a";"b";"b";"m";"m";...
         "b";"a";"m";"b";"a";"m";"a";"a";"m";"m";...
         "b";"b";"a";"m";"m";"m";"b";"a";"a";"m";...
         "b";"a";"a";"b";"b";"b";"m";"a";"b";"b"];
hiukkaset = ["\gamma";"e^-";"p^+";"n";"e^+";"\mu";"\pi^0";"K";"\Lambda";"\pi^\pm";...
    "\Xi^\pm";"\Delta";"\Sigma^\pm";"p^-";"\nu_e";"\Sigma^0";"\Xi^0";"\rho";"\eta";...
    "\phi";"\nu_\mu";"\eta'";"\Omega";"s";"\psi";"c";"\tau";"D";"\Upsilon";...
    "\Sigma_c";"\Lambda_c";"g";"\eta_c";"B";"D_s";"\Xi_c";"W^\pm";"Z^0";"B_s";...
    "\Lambda_b";"t";"\nu_\tau";"\Sigma_b";"\Xi_b";"\Omega_b";"\eta_b";"H";"\Omega_c";"\Xi_{cc}"];
vuodet = [1895 1897 1919 1932 1932 1937 1947 1947 1950 1950 ...
          1952 1951 1953 1955 1956 1958 1959 1961 1961 ...
          1962 1962 1963 1964 1968 1974 1974 1975 1976 1977 ...
          1979 1979 1979 1980 1981 1983 1983 1983 1983 1991 ...
          1991 1995 2000 2006 2007 2008 2008 2012 2017 2017];
massat = [   0  0.5  938  940  0.5  106  135  496 1116  140 ...
          1322 1232 1197  938    0 1192 1315  775 548 ...
          1019    0  958 1672   95 2097 1275 1777 1865 9460 ...
          2454 2286    0 2984 5280 1968 2471 83000 90000 5367 ...
          5619 173100  0 5811 5789 6054 9398 125100 2695 3621];
%plot(vuodet,massat,'.k','MarkerSize',20);
%semilogy(vuodet,massat,'.k','MarkerSize',20);
figure;
hold on;
for j=1:length(vuodet)
    laji = lajit(j);
    if laji == valittuLaji
        plot(vuodet(j),massat(j),'ok','MarkerSize',30,'MarkerFaceColor','y');
        text(vuodet(j)-2.2,massat(j),hiukkaset(j),'FontSize',15);
%        plot(vuodet(j),massat(j),'.k','MarkerSize',20);
%        text(vuodet(j) + 1,massat(j),hiukkaset(j),'FontSize',15);
    end
end
set(gca,'FontSize',15);
%xlim([1937 2020]);
if lightOnly
    ylim([0 3700]);
end
xlabel('Discovery year','FontSize',15);
ylabel('Mass (MeV)','FontSize',15);