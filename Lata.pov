#include "colors.inc"
#include "shapes.inc" 
#include "metals.inc"

#declare xclock = clock; 

light_source {<500,500,-200> White} 
light_source {<500,500,-200> White}

camera   
{    location <300,60,xclock> 
     look_at  <0  ,45,xclock>  
} 

background { SkyBlue}

plane 
{   <0, 1, 0>, -2 
    pigment { checker color Yellow, color Red} 
    finish  {ambient 0.15 diffuse 0.85 phong 1}
    scale 30 
} 

union
{   cylinder 
    {   <0, 0, 0>, <0, 1, 0>, 1 open                  
        pigment 
        {   image_map { jpeg "Lata_image.jfif" map_type 2 interpolate 2}}
        rotate <0,60,0>   
    }   
          
    cylinder 
    {    <0, 0, 0>, <0, 1, 0>, 0.999
         texture { T_Chrome_3A }  
    }

    scale     <35, 120, 35>   
    translate <0,  -60,  0>  
    rotate    <0,   90,  0>
    
    translate <0, abs(sin(radians(xclock*2)))*150,xclock> 
} 
  