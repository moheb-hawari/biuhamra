var StatesCitiesDropdown = function () {

    var handleSelect2 = function () {

        var states_url = site_url + "/admin/settings/users/get_states";
        var cities_url = site_url + "/admin/settings/users/get_cities";

        function formatResult(data) {
            return data.name;
        }

        function formatSelection(data) {
            return data.name;
        }

        $("#states").select2({
             theme:'bootstrap',
            ajax: {// instead of writing the function to execute the request we use Select2's convenient helper
                url: states_url,
                dataType: 'json',
                data: function (term, page) {
                    return {
                        q: term, // search term
                        page: page // page number
                    };
                },
                results: function (data, page) { // parse the results into the format expected by Select2.
                    var more = (page * 10) < data.total_count; // whether or not there are more results available
                    
                    return {results: data.result, more: more};
                }
            },
            initSelection: function (element, callback) {
                var id = $(element).val();
                
                if(id !== "") {
                    $.ajax({
                        url: states_url,
                        data: {id: id},
                        dataType: "json"
                    }).done(function(data) {
                        callback(data);
                    });
                }
            },
            formatResult: formatResult, // omitted for brevity, see the source of this page
            formatSelection: formatSelection, // omitted for brevity, see the source of this page
            escapeMarkup: function (m) {
                return m;
            }
        });
            
        $("#cities").select2({
            //multiple: true,
            //minimumInputLength: 1,
             theme:'bootstrap',
            ajax: {// instead of writing the function to execute the request we use Select2's convenient helper
                url: cities_url,
                dataType: 'json',
                data: function (term, page) {
                    var state =  $("#states").val();
                    return {
                        q: term, // search term
                        page: page, // page number
                        state:state
                    };
                },
                results: function (data, page) { // parse the results into the format expected by Select2.
                    var more = (page * 10) < data.total_count; // whether or not there are more results available
                    
                    return {results: data.result, more: more};
                }
            },
            initSelection: function (element, callback) {
                
                var id = $(element).val();
                
                if(id !== "") {
                    $.ajax({
                        url: cities_url,
                        data: {id: id},
                        dataType: "json"
                    }).done(function(data) {
                        callback(data);
                    });
                }
            },
            formatResult: formatResult, // omitted for brevity, see the source of this page
            formatSelection: formatSelection, // omitted for brevity, see the source of this page
            escapeMarkup: function (m) {
                return m;
            }, // we do not want to escape markup since we are displaying html in results

        });
        
    }

    return {
        //main function to initiate the module
        init: function () {
            handleSelect2();
        }
    };


}();

StatesCitiesDropdown.init();