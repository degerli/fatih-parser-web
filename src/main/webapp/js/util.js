/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function DoSubmit(sentence){
  document.parse_form.inputSentence.value = sentence;
  document.parse_form.submit();
  //alert("script çalışıyor");
  return true;
}
