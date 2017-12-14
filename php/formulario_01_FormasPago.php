                      <div class="form-group">
                        <label for="forma_pago_interes" class="col-sm-4 control-label">Forma de pago</label>
                        <div class="col-sm-8" id="selectbox">
                          <select class="chosen-select chosen-transparent form-control" id="forma_pago_interes" name="forma_pago_interes" parsley-trigger="change" parsley-required="true" parsley-error-container="#selectbox">
                              <option value="">Seleccione el tipo de pago</option>
                              <option value="consigancion">Consiganción</option>
                              <option value="efectivo">Efectivo</option>
                          </select>
                        </div>
                      </div>

                      <div class="form-group" id="cuenta">
                        <label for="cuenta-consigno" class="col-sm-4 control-label">Cuenta donde consigno</label>
                        <div class="col-sm-8" id="selectbox">
                          <select class="chosen-select chosen-transparent form-control" name="cuenta-consigno" id="cuenta-consigno">
                                    <!-- se carga por php/consulta_bancos_trust.php?consigno -->
                          </select>
                          <span id='cuenta-consigno-help' class="help-block"></span>
                        </div>
                      </div>


                    




