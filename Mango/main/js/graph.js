// 날짜
      var today = new Date();      
      var year = today.getFullYear();
      var month = ('0' + (today.getMonth() + 1)).slice(-2);
      var day = ('0' + today.getDate()).slice(-2);      
      var dateString = year + '-' + month  + '-' + day;

      var date1 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date1);      
      var year1 = today.getFullYear();
      var month1 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day1 = ('0' + today.getDate()).slice(-2);      
      var dateString1 = year1 + "-" + month1 + "-" + day1;

      var date2 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date2);      
      var year2 = today.getFullYear();
      var month2 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day2 = ('0' + today.getDate()).slice(-2);      
      var dateString2 = year2 + "-" + month2 + "-" + day2;
      
      var date3 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date3);      
      var year3 = today.getFullYear();
      var month3 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day3 = ('0' + today.getDate()).slice(-2);      
      var dateString3 = year3 + "-" + month3 + "-" + day3;
      
      var date4 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date4);      
      var year4 = today.getFullYear();
      var month4 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day4 = ('0' + today.getDate()).slice(-2);      
      var dateString4 = year4 + "-" + month4 + "-" + day4;
      
      var date5 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date5);      
      var year5 = today.getFullYear();
      var month5 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day5 = ('0' + today.getDate()).slice(-2);      
      var dateString5 = year5 + "-" + month5 + "-" + day5;
      
      var date6 = today.getTime() - (1*24*60*60*1000);
      today.setTime(date6);      
      var year6 = today.getFullYear();
      var month6 = ('0' + (today.getMonth() + 1)).slice(-2);
      var day6 = ('0' + today.getDate()).slice(-2);      
      var dateString6 = year6 + "-" + month6 + "-" + day6;
      
      // 날짜별 매출 계산
      var salesCount = $(".sales_detail").length;      
      var salesAllPrice = 0;
      var salesAllPrice1 = 0;
      var salesAllPrice2 = 0;
      var salesAllPrice3 = 0;
      var salesAllPrice4 = 0;
      var salesAllPrice5 = 0;
      var salesAllPrice6 = 0;
      
      for(var i=1; i<(salesCount+1); i++) {
         var dateVal = $(".t_"+i).data("dv");
         if(dateVal == dateString) {
            salesAllPrice += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString1) {
            salesAllPrice1 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString2) {
            salesAllPrice2 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString3) {
            salesAllPrice3 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString4) {
            salesAllPrice4 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString5) {
            salesAllPrice5 += parseInt($(".t_"+i).data("pr"));
         }
         if(dateVal == dateString6) {
            salesAllPrice6 += parseInt($(".t_"+i).data("pr"));
         }
      }
      
      // 구글 그래프 API
      google.charts.load('current', {packages: ['corechart', 'bar']});
      google.charts.setOnLoadCallback(drawBasic);
         
      function drawBasic() {      
      var data = new google.visualization.DataTable();      
      data.addColumn('string', '날짜');   
      data.addColumn('number', '금액(원)');
         
      data.addRows([
      
      [dateString6, salesAllPrice6],
      
      [dateString5, salesAllPrice5],
      
      [dateString4, salesAllPrice4],
      
      [dateString3, salesAllPrice3],
      
      [dateString2, salesAllPrice2],
      
      [dateString1, salesAllPrice1],
      
      [dateString, salesAllPrice],
      
      ]);
            
      var options = { 
      colors:['#5e990b'],       
      backgroundColor: {
               fill: 'none',
           },            
      hAxis: {      
      title: '날짜',      
      viewWindow: {      
      min: [7, 30, 0],      
      max: [17, 30, 0]      
      }      
      },
      
      vAxis: {      
      title: '금액(원)'      
      }
      };
             
      var chart = new google.visualization.ColumnChart(      
      document.getElementById('chart_div'));      
      chart.draw(data, options);
            
      }