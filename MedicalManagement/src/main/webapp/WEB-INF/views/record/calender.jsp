<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>


<link href='/resources/packages/core/main.css' rel='stylesheet' />
<link href='/resources/packages/daygrid/main.css' rel='stylesheet' />
<link href='/resources/packages/timegrid/main.css' rel='stylesheet' />
<script src='/resources/packages/core/main.js'></script>
<script src='/resources/packages/interaction/main.js'></script>
<script src='/resources/packages/daygrid/main.js'></script>
<script src='/resources/packages/timegrid/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      defaultDate: new Date(),
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
        var title = prompt('일정을 입력하세요:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2020-05-01'
        },
        {
          title: 'Long Event',
          start: '2020-05-07',
          end: '2020-05-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-05-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-05-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2020-05-11',
          end: '2020-05-13'
        },
        {
          title: 'Meeting',
          start: '2020-05-12T10:30:00',
          end: '2020-05-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2020-05-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2020-05-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2020-05-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2020-05-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2020-05-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2020-05-28'
        }
      ]
    });

    calendar.render();
  });

</script>
<style>

   #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>

<div id='calendar'></div>

<%@include file="../includes/footer.jsp"%>
