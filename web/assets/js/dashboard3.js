/* global Chart:false */

$(function () {
  'use strict'

  var ticksStyle = {
    fontColor: '#495057',
    fontStyle: 'bold'
  }

  var mode = 'index'
  var intersect = true

    let moneyInThisYear = document.getElementById("moneyInThisYear").value;
    const moneyThisYear = moneyInThisYear.split(",");
    var mty1 = moneyThisYear[0];
    var mty2 = moneyThisYear[1];
    var mty3 = moneyThisYear[2];
    var mty4 = moneyThisYear[3];
    var mty5 = moneyThisYear[4];
    var mty6 = moneyThisYear[5];
    var mty7 = moneyThisYear[6];
    var mty8 = moneyThisYear[7];
    var mty9 = moneyThisYear[8];
    var mty10 = moneyThisYear[9];
    var mty11 = moneyThisYear[10];
    var mty12 = moneyThisYear[11];
    let moneyInLastYear = document.getElementById("moneyInLastYear").value;
    const moneyLastYear = moneyInLastYear.split(",");
    var mly1 = moneyLastYear[0];
    var mly2 = moneyLastYear[1];
    var mly3 = moneyLastYear[2];
    var mly4 = moneyLastYear[3];
    var mly5 = moneyLastYear[4];
    var mly6 = moneyLastYear[5];
    var mly7 = moneyLastYear[6];
    var mly8 = moneyLastYear[7];
    var mly9 = moneyLastYear[8];
    var mly10 = moneyLastYear[9];
    var mly11 = moneyLastYear[10];
    var mly12 = moneyLastYear[11];
    const d = new Date();
    let month = d.getMonth();
    document.getElementById("moneyThisMonth").innerHTML = moneyThisYear[month] + " vnđ";
  //SALE CHART
  var $salesChart = $('#sales-chart')
  var salesChart = new Chart($salesChart, {
    type: 'bar',
    data: {
      labels: ['JAN','FEB', 'MAR','APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'],
      datasets: [
        {
          backgroundColor: '#007bff',
          borderColor: '#007bff',
          data: [mty1,mty2,mty3,mty4,mty5,mty6,mty7,mty8,mty9,mty10,mty11,mty12]
        }
        ,
        {
          backgroundColor: '#ced4da',
          borderColor: '#ced4da',
          data: [mly1,mly2,mly3,mly4,mly5,mly6,mly7,mly8,mly9,mly10,mly11,mly12]
        }
      ]
    },
    options: {
      maintainAspectRatio: false,
      tooltips: {
        mode: mode,
        intersect: intersect
      },
      hover: {
        mode: mode,
        intersect: intersect
      },
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          // display: false,
          gridLines: {
            display: true,
            lineWidth: '4px',
            color: 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks: $.extend({
            beginAtZero: true,

            // Include a dollar sign in the ticks
            callback: function (value) {
              if (value >= 1000) {
                value /= 1000
                value += 'k'
              }

              return  value
            }
          }, ticksStyle)
        }],
        xAxes: [{
          display: true,
          gridLines: {
            display: false
          },
          ticks: ticksStyle
        }]
      }
    }
  })
  let quizCreatedThisYear = document.getElementById("thisyearQuizCreated").value;
  const qcThisYear = quizCreatedThisYear.split(",");
  var qt1 = qcThisYear[0];
  var qt2 = qcThisYear[1];
  var qt3 = qcThisYear[2];
  var qt4 = qcThisYear[3];
  var qt5 = qcThisYear[4];
  var qt6 = qcThisYear[5];
  var qt7 = qcThisYear[6];
  var qt8 = qcThisYear[7];
  var qt9 = qcThisYear[8];
  var qt10 = qcThisYear[9];
  var qt11 = qcThisYear[10];
  var qt12 = qcThisYear[11];
  let quizCreatedLastYear = document.getElementById("lastyearQuizCreated").value;
  const qcLastYear = quizCreatedLastYear.split(",");
  var ql1 = qcLastYear[0];
  var ql2 = qcLastYear[1];
  var ql3 = qcLastYear[2];
  var ql4 = qcLastYear[3];
  var ql5 = qcLastYear[4];
  var ql6 = qcLastYear[5];
  var ql7 = qcLastYear[6];
  var ql8 = qcLastYear[7];
  var ql9 = qcLastYear[8];
  var ql10 = qcLastYear[9];
  var ql11 = qcLastYear[10];
  var ql12 = qcLastYear[11];
  document.getElementById("quizThisMonth").innerHTML = qcThisYear[month];
  //QUIZ CREATED CHART
  var $quizCreatedChart = $('#quiz-created-chart')
  var quizCreatedChart = new Chart($quizCreatedChart, {
    type: 'bar',
    data: {
      labels: ['JAN','FEB', 'MAR','APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'],
      datasets: [
        {
          backgroundColor: '#007bff',
          borderColor: '#007bff',
          data: [qt1,qt2,qt3,qt4,qt5,qt6,qt7,qt8,qt9,qt10,qt11,qt12]
        }
        ,
        {
          backgroundColor: '#ced4da',
          borderColor: '#ced4da',
          data: [ql1,ql2,ql3,ql4,ql5,ql6,ql7,ql8,ql9,ql10,ql11,ql12]
        }
      ]
    },
    options: {
      maintainAspectRatio: false,
      tooltips: {
        mode: mode,
        intersect: intersect
      },
      hover: {
        mode: mode,
        intersect: intersect
      },
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          // display: false,
          gridLines: {
            display: true,
            lineWidth: '4px',
            color: 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks: $.extend({
            beginAtZero: true,

            // Include a dollar sign in the ticks
            callback: function (value) {
              if (value >= 1000) {
                value /= 1000
                value += 'k'
              }

              return  value
            }
          }, ticksStyle)
        }],
        xAxes: [{
          display: true,
          gridLines: {
            display: false
          },
          ticks: ticksStyle
        }]
      }
    }
  })
  let thisweek = document.getElementById("visitorThisWeek").value;
  const day = thisweek.split(",");
  var tw0 = day[0];
  var tw1 = day[1];
  var tw2 = day[2];
  var tw3 = day[3];
  var tw4 = day[4];
  var tw5 = day[5];
  var tw6 = day[6];
  var totalThisWeek = parseInt(tw0, 10)+parseInt(tw1, 10)+parseInt(tw2, 10)+parseInt(tw3, 10)+parseInt(tw4, 10)+parseInt(tw5, 10)+parseInt(tw6, 10);
  document.getElementById("totalVisitorThisWeek").innerHTML = totalThisWeek;
  let lastweek = document.getElementById("visitorLastWeek").value;
  const day1 = lastweek.split(",");
  var lw0 = day1[0];
  var lw1 = day1[1];
  var lw2 = day1[2];
  var lw3 = day1[3];
  var lw4 = day1[4];
  var lw5 = day1[5];
  var lw6 = day1[6];
  //WEEKLY VISITOR CHART
  var $visitorsChart = $('#visitors-chart')
  // eslint-disable-next-line no-unused-vars
  var visitorsChart = new Chart($visitorsChart, {
    data: {
      labels: ['Monday', 'Tueday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
      datasets: [{
        type: 'line',
        data: [tw0,tw1,tw2,tw3,tw4,tw5,tw6],
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        pointBorderColor: '#007bff',
        pointBackgroundColor: '#007bff',
        fill: false
        // pointHoverBackgroundColor: '#007bff',
        // pointHoverBorderColor    : '#007bff'
      },
      {
        type: 'line',
        data: [lw0,lw1,lw2,lw3,lw4,lw5,lw6],
        backgroundColor: 'tansparent',
        borderColor: '#ced4da',
        pointBorderColor: '#ced4da',
        pointBackgroundColor: '#ced4da',
        fill: false
        // pointHoverBackgroundColor: '#ced4da',
        // pointHoverBorderColor    : '#ced4da'
      }]
    },
    options: {
      maintainAspectRatio: false,
      tooltips: {
        mode: mode,
        intersect: intersect
      },
      hover: {
        mode: mode,
        intersect: intersect
      },
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          // display: false,
          gridLines: {
            display: true,
            lineWidth: '4px',
            color: 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks: $.extend({
            beginAtZero: true,
            callback: function (value) {
              if (value >= 1000) {
                value /= 1000
                value += 'k'
              }
              return  value
            }
          }, ticksStyle)
        }],
        xAxes: [{
          display: true,
          gridLines: {
            display: false
          },
          ticks: ticksStyle
        }]
      }
    }
  })
})

// lgtm [js/unused-local-variable]
