$(document).ready(function(){

	console.log('hellow')
	var examGrade = document.getElementById('exam_grade')
	var buttons = document.getElementsByClassName("btn-signIn")
	var gradeForm = document.getElementsByClassName("grade-form")

	var exp = document.getElementsByClassName("graded-student-grade")

	var gradedForm = document.getElementsByClassName('graded-form')

	for(let i = 0; i< gradedForm.length; i++){
		if(exp[i].innerHTML != ""){
			gradeForm[i].style.display = 'none'
		}		
	}
});



   
