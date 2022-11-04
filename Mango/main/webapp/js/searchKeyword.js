$(document).on('click', '#btnSearch', function(e){
      e.preventDefault();
      var url= "${getMemberListURL}";
      url = url + "?searchType=" + $('#searchType').val();
      url = url + "&keyword=" + $('#keyword').val();
      location.href = url;
      console.log(url);
   })