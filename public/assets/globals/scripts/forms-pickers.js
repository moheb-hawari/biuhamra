var FormsPickers = {


	dateRangePicker: function () {
		$('.bootstrap-daterangepicker-basic').daterangepicker({
			singleDatePicker: true,
                        dateFormat: 'yy-mm-dd'
			}, function(start, end, label) {
				console.log(start.toISOString(), end.toISOString(), label);
			}
		);
	},

	


	init: function () {

		this.dateRangePicker();
	}
}

