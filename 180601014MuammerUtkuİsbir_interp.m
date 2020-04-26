function y = soru1function (vektor1,vektor2,sorulan)
  for i=1:length(vektor1)
    if ( sorulan > vektor1(i) )
      #o anki ve bi sonraký
      m = ( vektor2(i+1)- vektor2(i) ) / ( vektor1(i+1) - vektor1(i) );#eðim bulundu
      f = @(x) vektor2(i) + m*(x-vektor1(i));
      y = f(sorulan);
      break;
    elseif ( sorulan==vektor1(i) )
      y=vektor2(i);
    endif
      break;
  endfor  
      
endfunction
soru1function(data01(:,1),data01(:,2),0.5)