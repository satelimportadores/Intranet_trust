                 
                      
                     <div class="form-group">
                        <label for="fecha_cheq" class="col-sm-4 control-label">Fecha Cheque</label>
                        <div class="col-sm-8">
                          <input type="date" class="form-control" name="fecha_cheq" id="fecha_cheq" parsley-trigger="change" parsley-minlength="4" parsley-type="dateIso" parsley-validation-minlength="1" placeholder="YYYY-MM-DD">
                          <span id='fecha_cheq-help' class="help-block"></span>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="monto" class="col-sm-4 control-label">Monto $</label>
                        <div class="col-sm-8">
                          <input type="number" class="form-control" id="monto" name="monto" readonly="readonly" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
                          <span id='monto-help' class="help-block"></span>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="fecha_con" class="col-sm-4 control-label">Fecha Consignación</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" readonly="" name="fecha_con" id="fecha_con" parsley-trigger="change" parsley-minlength="4" parsley-type="dateIso" parsley-validation-minlength="1" placeholder="YYYY-MM-DD">
                        </div>
                      </div>


                    <div class="form-group">
                        <label for="interes" class="col-sm-4 control-label">Tasa de Interés</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="interes" name="interes" readonly="readonly" parsley-trigger="change" parsley-required="true" parsley-minlength="2" parsley-validation-minlength="1">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="num_dias" class="col-sm-4 control-label">Numero de Días</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" id="num_dias" name="num_dias" readonly="readonly" parsley-trigger="change" parsley-required="true" parsley-minlength="2" parsley-validation-minlength="1">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="cuota_dia" class="col-sm-4 control-label">Cuota Diaria</label>
                        <div class="col-sm-8">
                          <input type="number" class="form-control" id="cuota_dia" name="cuota_dia" parsley-trigger="change" parsley-required="true" parsley-validation-minlength="1">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="val_int" class="col-sm-4 control-label">Valor Interés</label>
                        <div class="col-sm-8">
                          <input type="number" class="form-control" id="val_int" name="val_int" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
                        </div>
                      </div>

                    




