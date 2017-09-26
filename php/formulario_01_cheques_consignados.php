                 
                      <div class="form-group">
                        <label for="mot_devolucion" class="col-sm-4 control-label">Motivo de la devolución</label>
                        <div class="col-sm-8" id="selectbox">
                          <select class="chosen-select chosen-transparent form-control" id="mot_devolucion" name="mot_devolucion" parsley-trigger="change" parsley-required="true" parsley-error-container="#selectbox">
                                <!-- se carga por php/consulta_devoluciones.php -->
                          </select>
                        </div>
                      </div>

                     <div class="form-group">
                        <label for="fecha_cheq" class="col-sm-4 control-label">Fecha Cheque</label>
                        <div class="col-sm-8">
                          <input type="date" class="form-control" name="fecha_cheq" id="fecha_cheq" readonly="readonly" parsley-trigger="change" parsley-minlength="4" parsley-type="dateIso" parsley-validation-minlength="1" placeholder="YYYY-MM-DD">
                          <span id='fecha_cheq-help' class="help-block"></span>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="monto" class="col-sm-4 control-label">Monto $</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="monto" name="monto" readonly="readonly" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
                          <span id='monto-help' class="help-block"></span>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="valor_girar" class="col-sm-4 control-label">Valor girado $</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="valor_girar" name="valor_girar" readonly="readonly" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
                          <span id='valor_girar-help' class="help-block"></span>
                        </div>
                      </div>

                     <div class="form-group">
                        <label for="fecha_dev" class="col-sm-4 control-label">Fecha Devolución</label>
                        <div class="col-sm-8">
                          <input type="date" class="form-control" name="fecha_dev" id="fecha_dev" parsley-trigger="change" parsley-minlength="4" parsley-type="dateIso" parsley-validation-minlength="1" placeholder="YYYY-MM-DD">
                          <span id='fecha_dev-help' class="help-block"></span>
                        </div>
                      </div>


                    




