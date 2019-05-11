 <!DOCTYPE html>
<html>
<head>
  </head>
  <body>
      <h2>Add Prescription</h2>
      <table style="width:100%">
        
        <tr><th>
            <div class="container">
                <h4>Patient
                  <select name="patient" id="patient">
                  <option>Select</option>
                  <option>Rajan Subedi</option>
                  <option>Gaurav Seth</option>
                  <option>Farhan Seth</option>
                  <option>Shudhanshu</option>
             </select></h4></div> </th>
          <th><div class="container">
                <h4>Treatment for
              <select name="treatment" id="treatment">
              <option>Select</option>
              <option>Rajan Subedi</option>
              <option>Gaurav Seth</option>
              <option>Farhan Seth</option>
              <option>Shudhanshu</option>
              </select></h4></div></th>
        </tr>
       
           <tr>
          <th>  Medicine*: <input type="text" placeholder="Add Medicine" id="medicine" name="medicine"></th>
     
              <th>Time as day*: <input type="text" name="timeAsDay" id="timeAsDay" placeholder="Time as day"></th>
             
              <th>  No of days: <input type="text" name="noOfDay" id="noOfDay" placeholder="No of days"></th>
                <th><div class="container">
                  <h4>When to take
                    <select id="whenToTake" name="When to take">
                    <option>Select</option>
                    <option>Morning</option>
                    <option>Afternoon</option>
                    <option>Night</option>
                    </select></h4></div>
				
				<th><input type="button" onclick="addOnPage()" value="+"/>
				</th>
			
				</tr>
				</table>
				
				
				
				<table id="display" border="1">
				<tr>
					<td>Medicine</td>
					<td>Time As day</td>
					<td>No of Day</td>
					<td>when to take</td>
				</tr>
				
			<!-- 	<tr>
					<td id="med"></td>
					<td id="tad"></td>
					<td id="nod"></td>
					<td id="wtt"></td>
				</tr> -->
				
				 </table>
				 
				 <div>
				<form action="addPrescription" method="post">
				<table>
				<tr><td><input type="hidden" id="med1" name="medicine[]"></td>
				<td><input type="hidden" id="tad1" name="timeAsDay[]"></td>
				<td><input type="hidden" id="nod1" name="noOfDay[]"></td>
				<td><input type="hidden" id="wtt1" name="whenToTake[]"></td>
				<td><input type="submit" value="save"></td></tr>
				</table>
				</form>
				</div>
				
				
</body>
  <script type="text/javascript">
  function addOnPage(){
	  var patient = document.getElementById('patient').value;
	  var treatment = document.getElementById('treatment').value;
	  var medicine = document.getElementById('medicine').value;
	  var timeAsDay = document.getElementById('timeAsDay').value;
	  var noOfDay = document.getElementById('noOfDay').value; 
	  var whenToTake = document.getElementById('whenToTake').value; 
	  
	  var medicinetd = document.createElement("td");
	  var medicinetn = document.createTextNode(medicine);
	  medicinetd.appendChild(medicinetn);
	  
	  var timesAsDaytd = document.createElement("td");
	  var timesAsDaytn = document.createTextNode(timeAsDay);
	  timesAsDaytd.appendChild(timesAsDaytn);
	  
	  var noOfDaytd = document.createElement("td");
	  var noOfDaytn = document.createTextNode(noOfDay);
	  noOfDaytd.appendChild(noOfDaytn);
	  
	  var whenToTaketd = document.createElement("td");
	  var whenToTaketn = document.createTextNode(whenToTake);
	  whenToTaketd.appendChild(whenToTaketn);
	  
	  var tr = document.createElement("tr");
	  tr.appendChild(medicinetd);
	  tr.appendChild(timesAsDaytd);
	  tr.appendChild(noOfDaytd);
	  tr.appendChild(whenToTaketd);
	  
	  var table = document.getElementById("display");
	  table.appendChild(tr);
	  
		 document.getElementById('med1').value= medicine;
		 document.getElementById('tad1').value= timeAsDay;
		 document.getElementById('nod1').value= noOfDay;
		 document.getElementById('wtt1').value= whenToTake;
	 
  }
     </script>
</html> 