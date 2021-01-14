$(document).ready(function () {

  $('.carousel').carousel({
    interval: 1000
  })

  //formulario
  $('#form-contato').validate({
    rules: {
      nome: 'required',
      email: 'required',
      telefone: 'required',
      assunto: 'required',
      mensagem: 'required'

    },
    messages: {
      nome: 'Insira o nome',
      email: 'Insira a mensagem',
      telefone: 'Insira o telefone',
      assunto: 'Insira o assunto',
      mensagem: 'Insira a mensagem'

    },
    errorPlacement: function (error, element) {
      error.insertAfter(element).addClass('text-danger');
    },
    errorClass: "is-invalid"
  });

  //calendario
  var calendar = $('#calendar').fullCalendar({

    header: {
      left: 'prev,next,today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    },
    monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
    monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
    dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sabado'],
    dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
    buttonText: {
      today: 'Hoje',
      month: 'Mês',
      week: 'Semana',
      day: 'Hoje',
    },
    weekText: 'Sm',
    allDayText: 'dia inteiro',
    moreLinkText(n) {
      return 'mais +' + n
    },
    noEventsText: 'Não há eventos para mostrar',
    defaultView: 'month',

    editable: true,

    eventos: 'events',
    selectable: true,
    selectHelper: true,

    select: function (start, end) {
      // Display the modal.
      // You could fill in the start and end fields based on the parameters
      $('.modal').modal('show');

    },
    eventClick: function (event, element) {
      // Display the modal and set the values to the event values.
      $('.modal').modal('show');
      $('.modal').find('#title').val(event.title);
      $('.modal').find('#starts-at').val(event.start);
      $('.modal').find('#ends-at').val(event.end);

    },
    editable: true,
    eventLimit: true // allow "more" link when too many events

  });

  // Bind the dates to datetimepicker.
  // You should pass the options you need
  $("#starts-at, #ends-at").datetimepicker();

  // Whenever the user clicks on the "save" button om the dialog
  $('#save-event').on('click', function () {
    var title = $('#title').val();
    if (title) {
      var eventData = {
        title: title,
        start: $('#starts-at').val(),
        end: $('#ends-at').val()
      };
      $('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
    }
    $('#calendar').fullCalendar('unselect');

    // Clear modal inputs
    $('.modal').find('input').val('');

    // hide modal
    $('.modal').modal('hide');
  });
});