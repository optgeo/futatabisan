require 'json'

while gets
  f = JSON.parse($_.strip)
  f['properties'].delete('ID')
  e = f['properties']['elev'].to_i
  minzoom = if e % 100 == 0
    12
  elsif e % 20 == 0
    13
  elsif e % 10 == 0
    15
  elsif e % 4 == 0
    16
  elsif e % 2 == 0
    17
  else
    18
  end
  f['tippecanoe'] = {
    'layer' => 'contour',
    'minzoom' => minzoom,
    'maxzoom' => 18
  }
  print "\x1e#{JSON.dump(f)}\n"
end

