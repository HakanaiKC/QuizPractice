var textarea = document.querySelector(".quiz-description");
var textarea1 = document.querySelector(".question-description");
var textarea2 = document.querySelector(".question-instruction");
textarea.addEventListener('keydown', autosize);
textarea1.addEventListener('keydown', autosize);
textarea2.addEventListener('keydown', autosize);
function autosize() {
    var el = this;
    setTimeout(function () {
        el.style.cssText = 'height:auto; padding:0';
        el.style.cssText = 'height:' + el.scrollHeight + 'px';
    }, 0);
}

// add row
function addQue() {
    var html = '';

    html += '<div class="create_new_quesiton row" name="quiz" id="createq" style="width: 100%;">';
    html += '<div class="col-sm-3"></div>';
    html += '<div class="col-sm-6 question">';
    html += '<div class="question-infor row" >';
    html += '<form id="question-information">';
    html += '<div class="col-sm-11 question-div" id="question">';
    html += '<textarea class="question-description" rows="2" placeholder="Question"></textarea>';
    html += '</div>';
    html += '<div class="col-sm-12 row option-div" >';
    html += '<div id="innerQue" class="innerQue row">';
    html += '<div class="choose-right-option-div col-sm-1">';
    html += '<input class="choose-right-option" type="checkbox" name="choose-right-option" value="ON" />';
    html += '</div>';
    html += '<div class="option-content col-sm-7" id="option-content">';
    html += '<input type=text" id="answer" placeholder="option-content" style="border: none; border-bottom: 1px solid gray; width: 100%;" />';
    html += '</div>';
    html += '<div class="remove-option-div col-sm-3">';
    html += '<button class="remove-option btn btn-white btn-sm" type="button" id="removeInnerQue"><i class="fas fa-trash-alt"></i></button>';
    html += '</div>';
    html += '</div>';
    //html += '<div id="newQuestion" class="newinnerQue row"></div>';
    html += '<div class="add-more-option-div col-sm-1">';
    html += '<button class="add-more-option btn-primary" onclick="addInnerQue()" type="button">Add option</button>';
    html += '</div>';
    html += '<div class="col-sm-10"></div>';
    html += '</div>';
    html += '<div class="col-sm-11 question-instruction-div" id="Instruction">';
    html += '<textarea class="question-instruction" rows="2" placeholder="Instruction"></textarea>';
    html += '</div>';
    html += '<br>';
    html += '<div class="col-sm-2 remove-question-div">';
    html += '<button id="removeRow" type="button" class="btn btn-danger">Remove</button>';
    html += '</div>';
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

function addInnerQue() {
    var html = '';
    html += '<div id="innerQue" class="innerQue row">';
    html += '<div class="choose-right-option-div col-sm-1">';
    html += '<input class="choose-right-option" type="checkbox" name="choose-right-option" value="ON" />';
    html += '</div>';
    html += '<div class="option-content col-sm-7" id="option-content">';
    html += '<input type=text" id="answer" placeholder="option-content" style="border: none; border-bottom: 1px solid gray; width: 100%;" />';
    html += '</div>';
    html += '<div class="remove-option-div col-sm-3">';
    html += '<button class="remove-option btn btn-white btn-sm" type="button" id="removeInnerQue"><i class="fas fa-trash-alt"></i></button>';
    html += '</div>';
    html += '</div>';
    $('#newQuestion').append(html);
}
    
$(document).on('click', '#removeInnerQue', function () {
    $(this).closest('#innerQue').remove();
});