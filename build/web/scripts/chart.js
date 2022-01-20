/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
var chart = new Chart(myChart, {
type: 'bar',
data: {
labels: ["B", "A", "B", "code"],
datasets: [{
label: 'Nombre des sections',
data: [4, 5, 2, 6],
backgroundColor: ['#ff006e', '#e9c46a', '#4361ee', "#699CEC"],
borderWidth: 2,
borderColor: 'black'

}]
}
});
$('#chart').show();});





