// add row
let i = 1;


function addQue() {
    
    var html = '';
    i++;
    html += '<div class="create_new_quesiton row" name="quiz" id="createq" style="width: 100%;">';
    html += '<div class="col-sm-3"></div>';
    html += `<div class="col-sm-6 question" id="${i}">`;
    html += '<div class="remove-question-div">';
    html += '<button id="removeRow" type="button" class="" style="float: right; margin-top:20px; margin-right: 20px;">';
    html += '<i class="fas fa-trash-alt"></i>';
    html += '</button>';
    html += '</div>';
    html += '<div class="question-infor row" >';
    html += '<form id="question-information">';
    html += '<div class="col-sm-11 question-div" id="question">';
    html += `<textarea class="question-description" rows="2" id="ques-des${i}" placeholder="Question"></textarea>`;
    html += '</div>';
    html += '<div class="col-sm-12 row option-div" >';
    html += `<div id="createOption${i}" style="width: 100%;">`;
    html += `<div id="innerQue" class="innerQue${i} row">`;
    html += '<div class="choose-right-option-div col-sm-1">';
    html += `<input class="choose-right-option${i}" type="checkbox" name="choose-right-option" value="ON" />`;
    html += '</div>';
    html += '<div class="option-content col-sm-9" id="option-content">';
    html += `<input type=text" id="answer" class="option-description${i}" placeholder="option-content" style="border: none; border-bottom: 1px solid gray; width: 100%;" />`;
    html += '</div>';
    html += '<div class="remove-option-div col-sm-1">';
    html += '<button class="remove-option btn btn-white btn-sm" type="button" id="removeInnerQue"><i class="fas fa-trash-alt"></i></button>';
    html += '</div>';
    html += '</div>';
    html += '</div>';
    html += '<div class="add-more-option-div col-sm-3">';
    html += `<button class="add-more-option btn-primary" onclick="addInnerQue('createOption${i}')" type="button">Add option</button>`;
    html += '</div>';
    html += '<div class="col-sm-10"></div>';
    html += '</div>';
    html += '<div class="col-sm-11 question-instruction-div" id="Instruction">';
    html += `<textarea class="question-instruction" id="ques-instruc${i}" rows="2" placeholder="Instruction"></textarea>`;
    html += '</div>';
    html += '<br>';
    html += '</form>';
    html += '</div>';
    html += '</div>';
    html += '<div class="col-sm-3"></div>';
    html += '</div>';
//    var idOption = [];
//    console.log(i);
    $('#newRow').append(html);

}
;



// remove row
$(document).on('click', '#removeRow', function () {
    $(this).closest('#createq').remove();
});

function addInnerQue(asdf) {
//    console.log(asdf);
    var asdf1 = "";
    asdf1 += asdf;
    var id = asdf1.substring(12, asdf1.length);
    var html1 = '';
    html1 += `<div id="innerQue" class="innerQue${id} row">`;
    html1 += '<div class="choose-right-option-div col-sm-1">';
    html1 += `<input class="choose-right-option${id}" type="checkbox" name="choose-right-option" value="ON" />`;
    html1 += '</div>';
    html1 += '<div class="option-content col-sm-9" id="option-content">';
    html1 += `<input type=text" id="answer" class="option-description${id}" placeholder="option-content" style="border: none; border-bottom: 1px solid gray; width: 100%;" />`;
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

//const question = {
//    id,
//    description,
//    instruction,
//    
//}

function getAll() {
    var k = 1;
    var arr = new Array();
    var y = 0;
    for (k = 1; k <= i; k++) {
        if (!!document.getElementById("ques-des" + k) === true) {
            arr[y] = k;
            y++;
            console.log(k);
        } else {
            continue;
        }
    }
    console.log("so luong cau hoi : " + arr.length);
    var listQuestion = new Array();
    var listOption = new Array();
    for (var n = 0; n < arr.length; n++) {
//        console.log(" cau hoi : " + arr[n]);
        var question = new Object();
        question.questionID = n;
        if (document.getElementById("ques-des" + arr[n]).value === '') {
            continue;
        }
        question.questionDescription = document.getElementById("ques-des" + arr[n]).value;
        question.questionInstruction = document.getElementById("ques-instruc" + arr[n]).value;
        listQuestion.push(question);
    }
    
    
    for (var n = 0; n < arr.length; n++) {
        var className = "innerQue" + arr[n];
        var countCheckbox=0;
        for(var m=0; m<document.getElementsByClassName(className).length; m++){
            
            classCheckbox = "choose-right-option" + arr[n];
            classOptionDescription = "option-description" + arr[n];

            var option = new Object();
            option.questionID = n;
            option.optionID = m;
            option.checkbox = document.getElementsByClassName(classCheckbox)[m].checked;
            option.optionDescription = document.getElementsByClassName(classOptionDescription)[m].value;
            listOption.push(option);
        }
       for(var m=0; m<document.getElementsByClassName(className).length; m++){
           if(document.getElementsByClassName(classCheckbox)[m].checked){
               countCheckbox++;
           }
       }
       if(countCheckbox===0){
           alert('You must check at least one option');
       }
       
    }
    
    var questionList = JSON.stringify(listQuestion,null,'@@@##@@@');
    var optionList = JSON.stringify(listOption,null,'@@@##@@@');
    document.getElementById("HiddenInput").value += questionList;
    document.getElementById("HiddenInputOption").value += optionList;
    


    
}
function changecolor() {
    console.log(document.getElementsByClassName("cate").length);
    for (var qwe = 1; qwe <= document.getElementsByClassName("cate").length; qwe++) {

        if (document.getElementsByClassName("choose-category")[qwe-1].checked) {
            var links = document.getElementById("cate" + qwe);
            links.style.color = "white";
            links.style.backgroundColor = "#2196f3";
        } else {
            var links = document.getElementById("cate" + qwe);
            links.style.color = "#2196f3";
            links.style.backgroundColor = "white";
        }
    }
}