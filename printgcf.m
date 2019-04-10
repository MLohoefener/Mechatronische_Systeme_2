function printgcf (FileName, GridMinor)
  % Draw x y coordinate system and grid in current figure
  % Choose minor grid
  % Print current figure as SVG Scalable Vector Graphic
  % Print current figure as EMF Enhanced Metafile
  % Testet with MATLAB and GNU Octave
  % Manfred Lohöfener, Leipzig, Jan. 2017
  % 
  % Usage: printgcf (mfilename, 0)

  grid on
  if GridMinor == 1 
      grid minor
  else
      set(gca,'GridLineStyle',':')
  end
  line ([0, 0],get (gca, 'ylim'), 'LineWidth', 1)
  line (get (gca, 'xlim'), [0,0], 'LineWidth', 1)
  hold off
  
  v = version;  
  if str2double(v(1:3))<6     % GNU Octave?
      print (gcf, [FileName '-' get(gcf, 'name') '.emf'], '-dmeta');	% Octave
  else
      print (gcf, [FileName '-' get(gcf, 'name') '.svg'], '-dsvg');     % MATLAB
  end
end
