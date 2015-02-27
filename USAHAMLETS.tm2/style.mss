Map {
  background-color: #fff;
}

@name: '[name]';

#mapbox_satellite_full,
#mapbox_satellite_watermask  {
  raster-opacity: 1;
}


#urban {
  line-width: 1;  
  line-color: red; 
   [zoom>=15] { polygon-fill:rgba(248, 135, 13, 0); }
  [zoom>=12] { polygon-fill:rgba(248, 135, 13, 0.11); }
  [zoom< 11] { polygon-fill:rgba(248, 135, 13, 0.52); }
  [zoom<= 10] { polygon-fill:rgba(248, 135, 13, 0.55); }
  [zoom<= 8] { polygon-fill:rgba(248, 135, 13, 0.68); }
  [zoom<= 6] { polygon-fill:rgba(248, 135, 13, 0.99); }
}

#hamlet {  
  [zoom<= 14] {  
  marker-fill: #152ff8;  
   }
  [zoom> 14 ]{   
  text-name: @name;  
  text-face-name:'DIN Offc Pro Medium';     
  text-fill:  #fffcfc;     
  text-size:18;  
  text-placement:point; 
  text-halo-fill:#000000;
  text-halo-radius:1;
  text-halo-rasterizer:fast;
  } 
}
#usa {
  line-width: 1; 
  line-color: white;   
}

 #state_label[zoom<=6] {
  text-name:@name;
  text-face-name:'DIN Offc Pro Medium';
  text-size:18;
  text-placement:interior;
  text-avoid-edges:true;
  text-fill:#ffffff;  
  text-halo-rasterizer:fast;
}
