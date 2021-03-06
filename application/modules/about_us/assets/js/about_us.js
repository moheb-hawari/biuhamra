var FormsWysiwyg = {

	summernoteDefault: function () {
		$('.summernote-default').summernote();
	},

	summernoteClickToEdit: function () {
		$('#summernote-edit').click(function () {
			$('.summernote-click2edit').summernote({focus: true});
		});
		$('#summernote-save').click(function () {
			var aHTML = $('.summernote-click2edit').code(); //save HTML If you need(aHTML: array).
			$('.summernote-click2edit').destroy();
		});
	},

	summernoteAirMode: function () {
		$('.summernote-airmode').summernote({
			airMode: true
		});
	},

	summernoteRtl: function () {
		$('.summernote-rtl').summernote({
			direction: 'rtl'
		});
	},

	summernoteModal: function () {
		$('#bs-summernote-modal').on('shown.bs.modal', function() {
			$('.summernote-modal').summernote({ height: 300, focus: true });
		}).on('hidden.bs.modal', function () {
			$('.summernote-modal').destroy();
		});
	},

	init: function () {
		this.summernoteDefault();
		this.summernoteClickToEdit();
		this.summernoteAirMode();
		this.summernoteRtl();
		this.summernoteModal();
	}
}