newletter = {}

newletter.saveEmail = function(){
    ajax({
        service: 'service/newletter/index',
        loading: true,
        data:{
            email: $('#newletter').val(),
        },
        success: function(result){
            if(result.success){
                popup.msg(result.message);
                $('.loading').hide();
                return;
            }else{
                popup.msg(result.message);
                $('.loading').hide();
                return;
            }
        }
    })
}

