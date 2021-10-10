// add row
let i =1;

function addQue() {
    var html = '';
    i++;
    html += '<div class="create_new_quesiton row" name="quiz" id="createq" style="width: 100%;">';
    html += '<div class="col-sm-3"></div>';
    html += '<div class="col-sm-6 question">';
    html += '<div class="remove-question-div">';
    html += '<button id="removeRow" type="button" class="" style="float: right; margin-top:20px; margin-right: 20px;">';
    html += '<i class="fas fa-trash-alt"></i>';
    html += '</button>';
    html += '</div>';
    html += '<div class="question-infor row" >';
    html += '<form id="question-information">';
    html += '<div class="col-sm-11 question-div" id="question">';
    html += '<textarea class="question-description" rows="2" placeholder="Question"></textarea>';
    html += '</div>';
    html += '<div class="col-sm-12 row option-div" >';
    html += `<div id="createQue${i}" style="width: 100%;">`;
    html += '<div id="innerQue" class="innerQue row">';
    html += '<div class="choose-right-option-div col-sm-1">';
    html += '<input class="choose-right-option" type="checkbox" name="choose-right-option" value="ON" />';
    html += '</div>';
    html += '<div class="option-content col-sm-9" id="option-content">';
    html += '<input type=text" id="answer" placeholder="option-content" style="border: none; border-bottom: 1px solid gray; width: 100%;" />';
    html += '</div>';
    html += '<div class="remove-option-div col-sm-1">';
    html += '<button class="remove-option btn btn-white btn-sm" type="button" id="removeInnerQue"><i class="fas fa-trash-alt"></i></button>';
    html += '</div>';
    html += '</div>';
    html += '</div>';
    html += '<div class="add-more-option-div col-sm-3">';
    html += `<button class="add-more-option btn-primary" onclick="addInnerQue('createQue${i}')" type="button">Add option</button>`;
    html += '</div>';
    html += '<div class="col-sm-10"></div>';
    html += '</div>';
    html += '<div class="col-sm-11 question-instruction-div" id="Instruction">';
    html += '<textarea class="question-instruction" rows="2" placeholder="Instruction"></textarea>';
    html += '</div>';
    html += '<br>';
    html += '</form>';
    html += '</div>';
    html += '</div>';
    html += '<div class="col-sm-3"></div>';
    html += '</div>';
    
    $('#newRow').append(html);
    
};

// remove row
$(document).on('click', '#removeRow', function () {
        $(this).closest('#createq').remove();
});

function addInnerQue(asdf) {
    console.log(asdf);
    var html1 = '';
    html1 += '<div id="innerQue" class="innerQue row">';
    html1 += '<div class="choose-right-option-div col-sm-1">';
    html1 += '<input class="choose-right-option" type="checkbox" name="choose-right-option" value="ON" />';
    html1 += '</div>';
    html1 += '<div class="option-content col-sm-9" id="option-content">';
    html1 += '<input type=text" id="answer" placeholder="option-content" style="border: none; border-bottom: 1px solid gray; width: 100%;" />';
    html1 += '</div>';
    html1 += '<div class="remove-option-div col-sm-1">';
    html1 += '<button class="remove-option btn btn-white btn-sm" type="button" id="removeInnerQue"><i class="fas fa-trash-alt"></i></button>';
    html1 += '</div>';
    html1 += '</div>';
    $(`#${asdf}`).append(html1);
}
    
$(document).on('click', '#removeInnerQue', function () {
    $(this).closest('#innerQue').remove();
});
