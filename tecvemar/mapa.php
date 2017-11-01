
  <link rel="stylesheet" href="rs-plugin/vector-map/jquery-jvectormap.css" type="text/css" media="screen"/>
  <script src="rs-plugin/vector-map/tests/assets/jquery-1.8.2.js"></script>
  <script src="rs-plugin/vector-map/jquery-jvectormap-2.0.3.min.js"></script>
  <script src="rs-plugin/vector-map/jquery-jvectormap-world-mill.js"></script>


  <div id="world-map" style="width: 600px; height: 400px"></div>
  <script>
    $(function(){
      $('#world-map').vectorMap({map: 'world_mill'});
    });
  </script>
