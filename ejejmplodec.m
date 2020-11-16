%%Obtención de datos Totales
clc
clear
close all
load('Senhales.mat');
%%Análisis de datos LP
for x=1:53
    clear ac_t
    F=T.LP{1,1}{1,x};%[1:100];
    %%Análisis Transformada Wavelet
    tipo='sym10';
    nivel=10;
    [cl,yl] = wavedec(F,nivel,tipo);
    y=yl';
    c=cl';
    ac=waverec(cl,yl,tipo);
    
    Fs = 100;
    Ts = 1/Fs;
    %% Se carga en la variable signals_t los datos de la Transformada Wavelet
    signals_t = ac;
    m=length(yl)-1
    for n1=1:m
        F=T.LP{1,1}{1,x};%[1:100];
        tipo='sym10';
        nivel=10;
        [cl,yl] = wavedec(F,nivel,tipo);
        y=yl;
        c=cl;
    %     ac=wrcoef('a',c,y,tipo,nivel);
    %     ac1=waverec(c,y,tipo);
    %     figure
    %     plot(ac1)
        if n1==1
            c1=c
            c(:,1:y(1,1))=[0];
            c11=c;
            y1=y
    %         y1(:,n)=[]
            ac=waverec(c,y,tipo);
            ac1=ac;
    %         figure
    %         plot(c1)
    %         figure
    %         plot(ac)
        elseif n1==2
            c2=c
            y2=y
            c(:,1:y(1,1))=[0];
            c(:,y(1,1)+1:y(1,1)+y(1,2))=[0];
    %         y2(:,n)=[]
            ac=waverec(c,y,tipo);
            ac2=ac;
    %         figure
    %         plot(c2)
    %         figure
    %         plot(ac)
        elseif n1==3
            c3=c
            y3=y
            c(:,1:y(1,1))=[0];
    %         y(:,n)=[]
            c(:,y(1,1)+y(1,2)+1:y(1,1)+y(1,2)+y(1,3))=[0];
            ac=waverec(c,y,tipo);
            ac3=ac;
    %         figure
    %         plot(c3)
    %         figure
    %         plot(ac)
        elseif n1==4
            c4=c
            y4=y
            c(:,1:y(1,1))=[0];
    %         y(:,n)=[]
            c(:,y(1,1)+y(1,2)+y(1,3)+1:y(1,1)+y(1,2)+y(1,3)+y(1,4))=[0];
            ac=waverec(c,y,tipo);
            ac4=ac;
    %         figure
    %         plot(c4)
    %         figure
    %         plot(ac)
        elseif n1==5
            c5=c
            y5=y
            c(:,1:y(1,1))=[0];
    %         y(:,n)=[]
            c(:,y(1,1)+y(1,2)+y(1,3)+y(1,4)+1:y(1,1)+y(1,2)+y(1,3)+y(1,4)...
                +y(1,5))=[0];
            ac=waverec(c,y,tipo);
            ac5=ac;
    %         figure
    %         plot(c5)
    %         figure
    %         plot(ac)
        elseif n1==6
            c6=c
            y6=y
            c(:,1:y(1,1))=[0];
            c(:,y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+1:y(1,1)+y(1,2)+y(1,3)...
                +y(1,4)+y(1,5)+y(1,6))=[0];
            ac=waverec(c,y,tipo);
            ac6=ac;
    %         figure
    %         plot(c3)
    %         figure
    %         plot(ac)
        elseif n1==7
            c7=c
            y7=y
            c(:,1:y(1,1))=[0];
            c(:,y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+1:y(1,1)+y(1,2)+...
                y(1,3)+y(1,4)+y(1,5)+y(1,6)+y(1,7))=[0];
            ac=waverec(c,y,tipo);
            ac7=ac;
    %         figure
    %         plot(c3)
    %         figure
    %         plot(ac)
        elseif n1==8
            c8=c
            y8=y
            c(:,1:y(1,1))=[0];
            c(:,y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+y(1,7)+1:y(1,1)+...
                y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+y(1,7)+y(1,8))=[0];
            ac=waverec(c,y,tipo);
            ac8=ac;
    %         figure
    %         plot(c3)
    %         figure
    %         plot(ac)
        elseif n1==9
            c9=c
            y9=y
            c(:,1:y(1,1))=[0];
            c(:,y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+y(1,7)+y(1,8)...
                +1:y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+y(1,7)+y(1,8)...
                +y(1,9))=[0];
            ac=waverec(c,y,tipo);
            ac9=ac;
    %         figure
    %         plot(c3)
    %         figure
    %         plot(ac)
        elseif n1==10
            c10=c
            y10=y
            c(:,1:y(1,1))=[0];
            c(:,y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+y(1,7)+y(1,8)+...
                y(1,9)+1:y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+...
                y(1,7)+y(1,8)+y(1,9)+y(1,10))=[0];
            ac=waverec(c,y,tipo);
            ac10=ac;
    %         figure
    %         plot(c3)
    %         figure
    %         plot(ac)
        elseif n1==11
            c11=c
            y11=y
            c(:,1:y(1,1))=[0];
            c(:,y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+y(1,7)+y(1,8)+...
            y(1,9)+y(1,10)+1:y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+...
            y(1,7)+y(1,8)+y(1,9)+y(1,10)+y(1,11))=[0];
            ac=waverec(c,y,tipo);
            ac11=ac;
    %         figure
    %         plot(c3)
    %         figure
    %         plot(ac)
        elseif n1==12
            c12=c
            y12=y
            c(:,1:y(1,1))=[0];
            c(:,y(1,1)+y(1,2)+y(1,3)+y(1,4)+y(1,5)+y(1,6)+y(1,7)+y(1,8)+...
                y(1,9)+y(1,10)+y(1,11)+1:y(1,1)+y(1,2)+y(1,3)+y(1,4)+...
                y(1,5)+y(1,6)+y(1,7)+y(1,8)+y(1,9)+y(1,10)+y(1,11)+max(y))=[0];
            ac=waverec(c,y,tipo);
            ac12=ac;
    %         figure
    %         plot(c3)
    %         figure
    %         plot(ac)
        end
        % Frecuencia de muestreo
        Fs = 100;
        % Se calcula el periodo de muestreo
        Ts = 1/Fs;
        % Se carga en la variable signals_t los datos de las señales
        signals_t = ac;
        %% Power Spectral Density
        ya = fft(ac);
        na = length(ac);          % number of samples
        fa = (0:na-1)*(Fs/na);     % frequency range
        powera = abs(ya).^2/na;
        %% Gráfica de la PSD
        % figure% power of the DFT
        % plot(fa,powera); xlim([0 50]); ylim([0 1600000])
        ac_t(n1,:)=ac;
        energy(n1)=sum(ac.^2);
    end
    %% Cálculo del coefciente de correlación
    for n=1:11
        for n1=1:11
            ccr=corrcoef(ac_t(n,:),ac_t(n1,:));
            ccr1(n,n1)=ccr(1,2) 
        end
        %% Gráfica de los coeficientes de correlación 
    %     figure
    %     plot(ccr1(n,:))
    end
    % figure
    % plot3(1:11,1:11,ccr1(1:11,:))
    %% Gráfica de la Energía de las señales.
    figure
    plot(energy,'-o')
    title('Energía Espectral Cada Coeficiente')
    legend()

end