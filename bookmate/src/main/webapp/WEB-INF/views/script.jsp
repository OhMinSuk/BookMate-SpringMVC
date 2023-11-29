<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session = "true" %>

	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/custom/js/owl.carousel.min.js"></script>
	<script src="/resources/custom/js/script.js"></script>
	
	<script>
		var owl = $('.owl-carousel');
		
		owl.eq(0).owlCarousel({
		    loop : true,
		    margin : 10,
		    nav : false,
		    autoplay : true,
		    autoplayTimeout : 2500,
		    responsive : {
		        0 : {
		            items:1
		        },
		        600 : {
		            items:3
		        },
		        1000 : {
		            items:5
		        }
		    }
		});
	
		owl.eq(1).owlCarousel({
			loop:false,
			margin:10,
			nav:false,
			
			autoplay:false,
			responsive : {
				0 : {
		            items:1
		        },
		        600 : {
		            items:3
		        },
		        1000 : {
		            items:5
		        }
			}
		});
	
		$(".owl-carousel-prev").click(function(e){
			owl.trigger("prev.owl.carousel")		
		});
		
		$(".owl-carousel-next").click(function(e){
			owl.trigger("next.owl.carousel");		
		});
	</script>
</body>
</html>