<!-- Barra de navegação -->
<div class="navigation">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?= base_url() ?>">Página Inicial</a></li>
            <li class="breadcrumb-item"><a href="<?= base_url('agenda') ?>">Agenda</a></li>
        </ol>
    </nav>
</div>

<!-- calendario -->
<h1>Agenda</h1>
<p><strong> Verifique os nossos horários disponiveis.</strong></p>
<div class="container" id="calendar">
    <div class="row" style="width:50%">
        <div class="col-md-12">
            <div id="calendario">
            </div>
            <div id='datepicker'>
            </div>

            <!-- modal-->
            <div class="modal fade" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                        <h4 class="modal-title">Evento</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="title">Qual serviço deseja agendar?</label><br>
                                    <input type="text" name="title" id="title" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="starts-at">Nome:</label> <br>
                                    <input type="text" name="starts_at" id="starts-at" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <label class="col-xs-4" for="ends-at">Telefone:</label><br>
                                    <input type="text" name="ends_at" id="ends-at" />
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button> <br>
                            <button type="button" class="btn btn-primary" id="salvar">Salvar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script type="text/javascript">
        let eventos = "<?php echo $events ?>"
    </script>