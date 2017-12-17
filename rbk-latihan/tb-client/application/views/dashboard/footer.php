    <div id="footer">
      <p>2013 &copy; Metis Admin</p>
    </div>

    <!-- #helpModal -->
    <div id="helpModal" class="modal fade">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Modal title</h4>
          </div>
          <div class="modal-body">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
              in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal --><!-- /#helpModal -->
    <script src="<?php echo base_url(); ?>assets/lib/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/lib/datatables/jquery.dataTables.js"></script>
    <script src="<?php echo base_url(); ?>assets/lib/datatables/DT_bootstrap.js"></script>
    <script src="<?php echo base_url(); ?>assets/lib/tablesorter/js/jquery.tablesorter.min.js"></script>
    <script src="a<?php echo base_url(); ?>ssets/lib/touch-punch/jquery.ui.touch-punch.min.js"></script>
    <script>
      $(function() {
        metisTable();
        metisSortable();
      });
    </script>
    <script src="<?php echo base_url(); ?>assets/lib/screenfull/screenfull.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/main.min.js"></script>

    <!--For Demo Only. Not required -->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/style-switcher.js"></script>
  </body>
</html>