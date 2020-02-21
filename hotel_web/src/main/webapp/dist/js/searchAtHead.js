function searchAtHead(){
    var name = $('#searchAtHead').val();
    var str=encodeURI(encodeURI(name));
    $(location).attr('href', '../orders/findByName.do?name='+ str );
}