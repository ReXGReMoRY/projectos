 global.Oplayer = id; //Se publica la variable para que sea accesible para todo script
 window_set_size(1280, 720);
 velocidadx = 0;
 velocidady = 0;
 vida = 100;
 vida_max = 100;
 muerto = false;
muerte_contada = false;
Oplayer.friction = 0.1;
 
 _collision_objects = [Odirtfloor, Odirtfloor2]; //Todos los objetos a los que colisionaré