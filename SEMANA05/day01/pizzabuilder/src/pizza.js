$('.btn-green-peppers').on('click',function(){
    $('.btn-green-peppers').toggleClass('active');
    $('.green-pepper').toggle();
})
$('.btn-pepperonni').on('click',function(){
    $('.btn-pepperonni').toggleClass('active');
    $('.pep').toggle();
})
$('.btn-mushrooms').on('click',function(){
    $('.btn-mushrooms').toggleClass('active');
    $('.mushroom').toggle();
})
$('.sauce').toggleClass('sauce-white');
$('.btn-sauce').toggleClass('active');
$('.btn-sauce').on('click',function(){
    $('.btn-sauce').toggleClass('active');
    $('.sauce').toggleClass('sauce-white');
})
$('.crust').toggleClass('crust-gluten-free');
$('.btn-crust').toggleClass('active');
$('.btn-crust').on('click',function(){
    $('.btn-crust').toggleClass('active');
    $('.crust').toggleClass('crust-gluten-free');
})