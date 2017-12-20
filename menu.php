<?php 
session_start();
 ?>
<ul class="nav navbar-nav side-nav" id="sidebar">
              
              <li class="collapsed-content"> 
                <ul>
                  <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                </ul>
              </li>

              <li class="navigation" id="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="#navigation">Navigation <i class="fa fa-angle-up"></i></a>
                
                <ul class="menu">
                  
                  <li>
                    <a href="inicio.php">
                      <i class="fa fa-tachometer"></i>inicio
                      <span class="badge badge-red">1</span>
                    </a>
                  </li>

                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-list"></i> Forms <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="cheques.php">
                          <i class="fa fa-caret-right"></i>cheques
                        </a>
                      </li>
                      <li>
                        <a href="cheques_imprimir_recibo.php">
                          <i class="fa fa-caret-right"></i>Cheques imprimir recibos
                        </a>
                      </li>
                      <li>
                        <a href="cheques_pendientes.php">
                          <i class="fa fa-caret-right"></i>Cheques pendientes
                        </a>
                      </li>
                      <li>
                        <a href="cheques_consignados.php">
                          <i class="fa fa-caret-right"></i>Cheques consignados
                        </a>
                      </li>
                      <li>
                        <a href="cheques_aplazados.php">
                          <i class="fa fa-caret-right"></i>Cheques aplazados
                        </a>
                      </li>
                      <li>
                        <a href="cheques_devueltos.php">
                          <i class="fa fa-caret-right"></i>Cheques devueltos
                        </a>
                      </li>
                      <li>
                        <a href="cheques_historial.php">
                          <i class="fa fa-caret-right"></i>Cheques historial 
                        </a>
                      </li>
                    </ul>
                  </li>

                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-pencil"></i> Interface <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="cliente_nuevo.php">
                          <i class="fa fa-caret-right"></i>Cliente nuevo
                        </a>
                      </li>
                      <li>
                        <a href="contacts.php">
                          <i class="fa fa-caret-right"></i>Clientes
                        </a>
                      </li>
                      
                    </ul>
                  </li>


                </ul>

              </li>

              <li class="summary" id="order-summary">
                <a href="#" class="sidebar-toggle underline" data-toggle="#order-summary">Orders Summary <i class="fa fa-angle-up"></i></a>

                <div class="media">
                  <a class="pull-right" href="#">
                    <span id="sales-chart"></span>
                  </a>
                  <div class="media-body">
                    This week sales
                    <h3 class="media-heading">26, 149</h3>
                  </div>
                </div>

                <div class="media">
                  <a class="pull-right" href="#">
                    <span id="balance-chart"></span>
                  </a>
                  <div class="media-body">
                    This week balance
                    <h3 class="media-heading">318, 651</h3>
                  </div>
                </div>

              </li>

              <li class="settings" id="general-settings">
                <a href="#" class="sidebar-toggle underline" data-toggle="#general-settings">General Settings <i class="fa fa-angle-up"></i></a>

                <div class="form-group">
                  <label class="col-xs-8 control-label">Switch ON</label>
                  <div class="col-xs-4 control-label">
                    <div class="onoffswitch greensea">
                      <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="switch-on" checked="">
                      <label class="onoffswitch-label" for="switch-on">
                        <span class="onoffswitch-inner"></span>
                        <span class="onoffswitch-switch"></span>
                      </label>
                    </div>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-xs-8 control-label">Switch OFF</label>
                  <div class="col-xs-4 control-label">
                    <div class="onoffswitch greensea">
                      <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="switch-off">
                      <label class="onoffswitch-label" for="switch-off">
                        <span class="onoffswitch-inner"></span>
                        <span class="onoffswitch-switch"></span>
                      </label>
                    </div>
                  </div>
                </div>

              </li>

              
            </ul>


<script src="assets/js/minimal.min.js"></script>