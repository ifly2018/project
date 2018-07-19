$("input[name='name']").focus(function(){
    $(this).removeClass("inputerr");
    $(this).next().empty().hide();
});
$("input[name='tel']").focus(function(){
    $(this).removeClass("inputerr");
    $(this).next().empty().hide();
});
$("#question").focus(function(){
    $(this).removeClass("inputerr");
    $(this).next().empty().hide();
});

function sub() {
    var objName = $("input[name='name']");
    var objTel  = $("input[name='tel']");
    var objdesc = $("#question");

    var name = objName.val();
    var tel = objTel.val();
    var question = objdesc.val();
    var sex = $("input[name='sex']").val();
    var age = $("input[name='age']").val();

    if(name == ''){
        objName.addClass("inputerr");
        objName.next().empty().html("称呼不能为空！").show();
        return false;
    }

    if(tel == ''){
        objTel.addClass("inputerr");
        objTel.next().empty().html("电话不能为空！").show();
        return false;
    }
    else{
        var myreg = /^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
        if(!myreg.test(tel)){
            objTel.addClass("inputerr");
            objTel.next().empty().html("电话号码格式不正确！").show().show();
            return false;
        }
    }
    if(question  == ''){
        objdesc.addClass("inputerr");
        objdesc.next().empty().html("问题不能为空！").show();
        return false;
    }
    var docId = $("input[name='memid']").val();
    var docName = $("input[name='memname']").val();
    var url = $("input[name='url']").val();
    $.post(url,{name:name,tel:tel,sex:sex,age:age,quesion:question,docter:docName,docid:docId},function(ret){
        if(ret.status == 1){
            var tourl = $("input[name='tourl']").val();
            window.location.href = tourl;
        }else{
            var errurl = $("input[name='errurl']").val();
            window.location.href = errurl;
        }
    });

}