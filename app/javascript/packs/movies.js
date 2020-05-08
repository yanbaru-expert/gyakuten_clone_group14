document.addEventListener('turbolinks:load', function() {


        $("#search-movies").keyup(function(){
            $(".searched-video").removeClass("hidden")

            var val = $(this).val();
            
            $(".searched-contents").addClass("hidden")
            $(".default-video").addClass("hidden")
            
            var count = 0
            if(val == null || val == "" || val == " "){
                $(".default-video").removeClass("hidden")
            }else{ 
                $('.video-title-text').each(function(){ 
                    if($(this).text().toLowerCase().indexOf(val.toLowerCase()) != -1){
                        $(this).parents(".searched-contents").removeClass("hidden")
                        count += 1
                    }
                    if(count >= 10){
                        return false;
                    }
                }); 
            }
            
        });

});