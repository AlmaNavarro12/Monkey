/*
*/

$(document).ready(function() {

  //creamos un objeto de firebase, y le pasamos la URL como parametro

  URL_DB = 'https://domotica-f96cf-default-rtdb.firebaseio.com/sala'
  var ref = new Firebase(URL_DB);

  /*****************************************************************
   Obtenemos el valor del último estado 
  ******************************************************************/
  ref.once("value", function(res) {

    var luzSala = res.child("sala").val();
    $('#switch').attr('checked', luzSala); // 
    console.log("Estado actual de luz de sala: " + luzSala)

  });

  /*****************************************************************
   Obtenemos el valor del estado de la luz en tiempo real, 
   cada vez que haya cambio
  ******************************************************************/
  ref.on("child_changed", function(res) {

    var luz_sala = res.val();
    $('#switch').prop('checked', luz_sala);
    console.log("Cambio de estado de sala: " +luz_sala)

  });        

 /*****************************************************************
   Actualizamos el valor, cambiado el estado del Switch 
  ******************************************************************/
  $('#switch').on('change', function(){ 
     if(this.checked) 
      {
          console.log("On")
          ref.update({sala:true });
      }
      else{
          console.log("Off")
          ref.update({sala:false });
      }
    });


});


$(document).ready(function() {

  //creamos un objeto de firebase, y le pasamos la URL como parametro

  URL_DB = 'https://domotica-f96cf-default-rtdb.firebaseio.com/cocina'
  var ref = new Firebase(URL_DB);

  /*****************************************************************
   Obtenemos el valor del último estado 
  ******************************************************************/
   ref.once("value", function(res) {

    var cocina = res.child("cocina").val();
    $('#switch1').attr('checked', cocina); // 
    console.log("Estado actual de luz de cocina: " + cocina)

  });

  /*****************************************************************
   Obtenemos el valor del estado de la luz en tiempo real, 
   cada vez que haya cambio
  ******************************************************************/
  ref.on("child_changed", function(res) {

    var cocina = res.val();
    $('#switch1').prop('checked', cocina);
    console.log("Cambio de estado de cocina: " + cocina)

  });        

 /*****************************************************************
   Actualizamos el valor, cambiado el estado del Switch 
  ******************************************************************/
   $('#switch1').on('change', function(){ 
    if(this.checked) 
     {
         console.log("On")
         ref.update({ cocina:true });
     }
     else{
         console.log("Off")
         ref.update({ cocina:false });
     }
   });
});

$(document).ready(function() {

  //creamos un objeto de firebase, y le pasamos la URL como parametro

  URL_DB = 'https://domotica-f96cf-default-rtdb.firebaseio.com/habitacion'
  var ref = new Firebase(URL_DB);

  /*****************************************************************
   Obtenemos el valor del último estado 
  ******************************************************************/
  ref.once("value", function(res) {

    var luzHabitacion = res.child("habitacion").val();
    $('#switch2').attr('checked', luzHabitacion); // 
    console.log("Estado actual de luz de habitacion: " + luzHabitacion)

  });

  /*****************************************************************
   Obtenemos el valor del estado de la luz en tiempo real, 
   cada vez que haya cambio
  ******************************************************************/
  ref.on("child_changed", function(res) {

    var luz_hab = res.val();
    $('#switch2').prop('checked', luz_hab);
    console.log("Cambio de estado de habitacion: " +luz_hab)

  });        

 /*****************************************************************
   Actualizamos el valor, cambiado el estado del Switch 
  ******************************************************************/
  $('#switch2').on('change', function(){ 
     if(this.checked) 
      {
          console.log("On")
          ref.update({ habitacion: true });
      }
      else{
          console.log("Off")
          ref.update({ habitacion: false });
      }
    });


});

$(document).ready(function() {

  //creamos un objeto de firebase, y le pasamos la URL como parametro

  URL_DB = 'https://domotica-f96cf-default-rtdb.firebaseio.com/ba%C3%B1o'
  var ref = new Firebase(URL_DB);

  /*****************************************************************
   Obtenemos el valor del último estado 
  ******************************************************************/
  ref.once("value", function(res) {

    var luzBaño = res.child("baño").val();
    $('#switch3').attr('checked', luzBaño); // 
    console.log("Estado actual de luz de baño: " + luzBaño)

  });

  /*****************************************************************
   Obtenemos el valor del estado de la luz en tiempo real, 
   cada vez que haya cambio
  ******************************************************************/
  ref.on("child_changed", function(res) {

    var luz_bano = res.val();
    $('#switch3').prop('checked', luz_bano);
    console.log("Cambio de estado de baño: " +luz_bano)

  });        

 /*****************************************************************
   Actualizamos el valor, cambiado el estado del Switch 
  ******************************************************************/
  $('#switch3').on('change', function(){ 
     if(this.checked) 
      {
          console.log("On")
          ref.update({ baño: true });
      }
      else{
          console.log("Off")
          ref.update({ baño: false });
      }
    });


});

$(document).ready(function() {

  //creamos un objeto de firebase, y le pasamos la URL como parametro

  URL_DB = 'https://domotica-f96cf-default-rtdb.firebaseio.com/garage'
  var ref = new Firebase(URL_DB);

  /*****************************************************************
   Obtenemos el valor del último estado 
  ******************************************************************/
  ref.once("value", function(res) {

    var luzGarage = res.child("garage").val();
    $('#switch4').attr('checked', luzGarage); // 
    console.log("Estado actual de luz del garage: " + luzGarage)

  });

  /*****************************************************************
   Obtenemos el valor del estado de la luz en tiempo real, 
   cada vez que haya cambio
  ******************************************************************/
  ref.on("child_changed", function(res) {

    var luz_garage = res.val();
    $('#switch4').prop('checked', luz_garage);
    console.log("Cambio de estado de garage: " +luz_garage)

  });        

 /*****************************************************************
   Actualizamos el valor, cambiado el estado del Switch 
  ******************************************************************/
  $('#switch4').on('change', function(){ 
     if(this.checked) 
      {
          console.log("On")
          ref.update({ garage: true });
      }
      else{
          console.log("Off")
          ref.update({ garage: false });
      }
    });


});

$(document).ready(function() {

  //creamos un objeto de firebase, y le pasamos la URL como parametro

  URL_DB = 'https://domotica-f96cf-default-rtdb.firebaseio.com/comedor'
  var ref = new Firebase(URL_DB);

  /*****************************************************************
   Obtenemos el valor del último estado 
  ******************************************************************/
  ref.once("value", function(res) {

    var luzComedor = res.child("comedor").val();
    $('#switch5').attr('checked', luzComedor); // 
    console.log("Estado actual de luz del comedor: " + luzComedor)

  });

  /*****************************************************************
   Obtenemos el valor del estado de la luz en tiempo real, 
   cada vez que haya cambio
  ******************************************************************/
  ref.on("child_changed", function(res) {

    var luz_comedor = res.val();
    $('#switch5').prop('checked', luz_comedor);
    console.log("Cambio de estado de comedor: " +luz_comedor)

  });        

 /*****************************************************************
   Actualizamos el valor, cambiado el estado del Switch 
  ******************************************************************/
  $('#switch5').on('change', function(){ 
     if(this.checked) 
      {
          console.log("On")
          ref.update({ comedor: true });
      }
      else{
          console.log("Off")
          ref.update({ comedor: false });
      }
    });


});


