/*
 * jQuery File Upload Plugin JS Example
 * https://github.com/blueimp/jQuery-File-Upload
 *
 * Copyright 2010, Sebastian Tschan
 * https://blueimp.net
 *
 * Licensed under the MIT license:
 * https://opensource.org/licenses/MIT
 */

/* global $, window */

$(function () {
    'use strict';
    var id = $('#folder_id').val();
     var name = $('#folder_name').val();
    // Initialize the jQuery File Upload widget:
    $('#fileupload').fileupload({
        // Uncomment the following to send cross-domain cookies:
        //xhrFields: {withCredentials: true},
        url: site_url + '/admin/facilities/photo_gallery/do_multi_upload/'+id+'/'+name
        //url:assets_url+'globals/plugins/multi_upload/server/php/'
    });

    // Enable iframe cross-domain access via redirect option:
    $('#fileupload').fileupload(
        'option',
        'redirect',
        window.location.href.replace(
            /\/[^\/]*$/,
            '/cors/result.html?%s'
        )
    );


        // Load existing files:
        $('#fileupload').addClass('fileupload-processing');
        $.ajax({
            // Uncomment the following to send cross-domain cookies:
            //xhrFields: {withCredentials: true},
            url: $('#fileupload').fileupload('option', 'url'),
            dataType: 'json',
            context: $('#fileupload')[0]
        }).always(function () {
            $(this).removeClass('fileupload-processing');
        }).done(function (result) {
            $(this).fileupload('option', 'done')
                .call(this, $.Event('done'), {result: result});
        });
		
		var $fileInput = $('#fileupload');

		$fileInput.on('fileuploaddone', function(e, data) {
			var activeUploads = $fileInput.fileupload('active');

			if(activeUploads == 1) {
				console.info("All uploads done");
				getNewCirfToken();
				// Your stuff here
			}
		});
		
		function getNewCirfToken(){
			  $.ajax({
				      type:'GET',
					  url:'http://localhost/biuhamra/public/index.php/admin/facilities/photo_gallery/getNewToken',
					  data:{
						 'getTokenData':true
					  },
					  success:function(res){
						  $("input[name='ci_csrf_token']").val(res);
					  }
					});
		}
    

});
