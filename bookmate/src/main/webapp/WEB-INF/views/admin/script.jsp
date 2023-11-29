<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>
				</div>
			</div>
		</div>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="/resources/custom/js/sidebars.js"></script>
	<script src="/resources/custom/js/script.js"></script>
	
	<script>
		var rentChartLabels = [];
		var rentChartData = [];
		var genreChartLabels = [];
		var genreChartData = [];
		var genderChartLabels = [];
		var maleData = [];
		var femaleData = [];
		var dateChartLabels = [];
		var dateChartData = [];
		
		<c:forEach items="${rentChartData}" var="rentData">
			rentChartLabels.push("${rentData.book_name}");
			rentChartData.push(${rentData.rent_count});
		</c:forEach>
		
		<c:forEach items="${genreChartData}" var="genreData">
			genreChartLabels.push("${genreData.book_genre}");
			genreChartData.push(${genreData.genre_count});
		</c:forEach>


		<c:forEach items="${genderChartData}" var="genderData">
			genderChartLabels.push("${genderData.book_genre}");
			maleData.push("${genderData.male}");
			femaleData.push("${genderData.female}");
		</c:forEach>

		<c:forEach items="${dateChartData}" var="dateData">
			dateChartLabels.push("${dateData.user_name}");
			dateChartData.push(${dateData.rent_count});
		</c:forEach>
		
		
		var genreCanvas = document.getElementById("genreChart");
		
		if(genreCanvas){
			var genreChartContext = genreCanvas.getContext("2d");
			var genreChart = new Chart(genreChartContext, {
					type : 'doughnut',
					data : {
						labels: genreChartLabels,
					datasets: [{
						label: '도서 수',
						data: genreChartData,
						backgroundColor: [
							'rgba(255, 99, 132, 0.2)',
			                'rgba(54, 162, 235, 0.2)',
			                'rgba(255, 206, 86, 0.2)',
			                'rgba(75, 192, 192, 0.2)',
			                'rgba(153, 102, 255, 0.2)',
			                'rgba(255, 159, 64, 0.2)'
			            ],
			            borderColor: [
			                'rgba(255,99,132,1)',
			                'rgba(54, 162, 235, 1)',
			                'rgba(255, 206, 86, 1)',
			                'rgba(75, 192, 192, 1)',
			                'rgba(153, 102, 255, 1)',
			                'rgba(255, 159, 64, 1)'
			            ],
			            hoverOffset: 6
			        }]
			    },
			});
		}

		var rentCanvas = document.getElementById("rentChart");

		if(rentCanvas){
			var rentChartContext = rentCanvas.getContext("2d");
			var rentChart = new Chart(rentChartContext, {
			    type: 'bar',
			    data: {
			        labels: rentChartLabels,
			        datasets: [{
			            label: '대여 횟수',
			            data: rentChartData,
			            backgroundColor: [
			                'rgba(255, 99, 132, 0.2)',
			                'rgba(54, 162, 235, 0.2)',
			                'rgba(255, 206, 86, 0.2)',
			                'rgba(75, 192, 192, 0.2)',
			                'rgba(153, 102, 255, 0.2)'
			            ],
			            borderColor: [
			                'rgba(255,99,132,1)',
			                'rgba(54, 162, 235, 1)',
			                'rgba(255, 206, 86, 1)',
			                'rgba(75, 192, 192, 1)',
			                'rgba(153, 102, 255, 1)'
			            ],
			            borderWidth: 2
			        }]
			    },
			    options: {
		        	plugins: {
			        	legend : {
				        	display : false
				        }
		        	}
			    }
			});
		}

		var genderCanvas = document.getElementById("genderChart");

		if(genderCanvas){
			var genderChartContext = genderCanvas.getContext("2d");
			var genderChart = new Chart(genderChartContext, {
					type : 'bar',
					data : {
						labels: genderChartLabels,
					datasets: [
						{
							label: '남자',
							data: maleData,
							backgroundColor:'rgba(54, 162, 235, 0.2)',
							borderColor:'rgba(54, 162, 235, 1)',
							borderWidth:1	
						},
						{
							label: '여자',
							data: femaleData,
							backgroundColor: 'rgba(255, 99, 132, 0.2)',
							borderColor: 'rgba(255,99,132,1)',
							borderWidth:1	
						},
			        ]},
			        options: {
			        	plugins: {
				        	legend : {
					        	display : true
					        }
			        	},
			        	scales: {
					        x: {
					          stacked: true,
					        },
					        y: {
					          stacked: true
					        }
					      }
				    }
				});
			}

		var dateCanvas = document.getElementById("dateChart");

		if(dateCanvas){
			var dateChartContext = dateCanvas.getContext("2d");
			var dateChart = new Chart(dateChartContext, {
			    type: 'bar',
			    data: {
			        labels: dateChartLabels,
			        datasets: [{
			            label: '대여 횟수',
			            data: dateChartData,
			            backgroundColor: [
			                'rgba(255, 99, 132, 0.2)',
			                'rgba(54, 162, 235, 0.2)',
			                'rgba(255, 206, 86, 0.2)',
			                'rgba(75, 192, 192, 0.2)',
			                'rgba(153, 102, 255, 0.2)'
			            ],
			            borderColor: [
			                'rgba(255,99,132,1)',
			                'rgba(54, 162, 235, 1)',
			                'rgba(255, 206, 86, 1)',
			                'rgba(75, 192, 192, 1)',
			                'rgba(153, 102, 255, 1)'
			            ],
			            borderWidth: 2
			        }]
			    },
			    options: {
		        	plugins: {
			        	legend : {
				        	display : false
				        }
		        	}
			    }
			});
		}
	</script>
	
</body>
</html>