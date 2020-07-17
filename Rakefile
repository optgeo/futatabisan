desc 'create intermediate TIFF file'
task :tif do
  sh "gdalwarp -s_srs 'EPSG:6673' ~/Downloads/05of79/DSM_05OF79* a.tif"
end

desc 'create tiles'
task :tiles do
  sh "gdal_contour -i 1 -a elev a.tif a.shp"
  sh "ogr2ogr -f GeoJSONSeq /vsistdout/ a.shp | ruby filter.rb | tippecanoe -f --maximum-zoom=18 --base-zoom=18 -o tiles.mbtiles"
  sh "tile-join --force --no-tile-compression --output-to-directory=docs/zxy --no-tile-size-limit tiles.mbtiles"
end

desc 'create style'
task :style do
  sh "parse-hocon style.conf > docs/style.json"
  sh "gl-style-validate docs/style.json"
end

desc 'host'
task :host do
  sh "budo -d docs"
end
