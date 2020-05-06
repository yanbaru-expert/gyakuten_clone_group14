document.addEventListener('turbolinks:load', function() {

    $("#search-movies").keyup(function(){

        var val = $(this).val();

        $.ajax({ 
            url: '/movies/search', 
            type: 'GET', 
            data: ('keyword=' + val), 
            processData: false, 
            contentType: false, 
            dataType: 'json' 
        })

        .done(function(data){
            console.log(data)
            if (data.length == 31){
                $(".video-contents").removeClass("hidden")
                $("nav").removeClass("hidden")
                $(".searched-video").addClass("hidden")
            }else{
                $(".video-contents").addClass("hidden")
                $("nav").addClass("hidden")
                
                 
                $(data).each(function(i, video){ 
                    var common = '<div class="video-contents searched-video">'
                                +'<p class="video-title">'
                                + video.title
                                +'</p>'
                                +'<div class="video-content">'
                                    +'<iframe src='
                                    + video.url
                                    +' frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
                                +'</div>'
                            +'</div>'
                    
                    var option = '<a href='
                                +  video.source_code_url 
                                + ' class="video-source-link">ソースコード</a>'

                           
                    $('#movie').append(common)

                    if(video.source_code_url != null){
                        $('#movie').append(option)
                    }
                });
 
            }
       

     

        });

    });

});