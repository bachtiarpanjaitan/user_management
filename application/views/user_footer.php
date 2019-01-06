<script src="<?= ASSETS ?>vendors/jquery/dist/jquery.min.js"></script>
<script src="<?= ASSETS ?>vendors/popper.js/dist/umd/popper.min.js"></script>
<script src="<?= ASSETS ?>vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?= ASSETS ?>js/main.js"></script>
<!-- <script src="<?= ASSETS ?>js/sweetalert.min.js"></script> -->
<script src="<?= ASSETS ?>js/swal.js"></script>
<!-- <script src="<?= ASSETS ?>js/widgets.js"></script> -->
<script src="<?= ASSETS ?>vendors/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="<?= ASSETS ?>vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<script src="<?= ASSETS ?>vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script type="text/javascript">
	function isNumberKey(evt)
		{
			var charCode = (evt.which) ? evt.which : evt.keyCode;
			if (charCode != 46 && charCode > 31 
			&& (charCode < 48 || charCode > 57))
			return false;
			return true;
		}  
			
			
	function isNumericKey(evt)
		{
			var charCode = (evt.which) ? evt.which : evt.keyCode;
			if (charCode != 46 && charCode > 31 
			&& (charCode < 48 || charCode > 57))
			return true;
			return false;
		}

	(function($) {
		"use strict";

		jQuery('#vmap').vectorMap({
			map: 'world_en',
			backgroundColor: null,
			color: '#ffffff',
			hoverOpacity: 0.7,
			selectedColor: '#1de9b6',
			enableZoom: true,
			showTooltip: true,
			values: sample_data,
			scaleColors: ['#1de9b6', '#03a9f5'],
			normalizeFunction: 'polynomial'
		});
	})(jQuery); 
</script>

</body>

</html>
