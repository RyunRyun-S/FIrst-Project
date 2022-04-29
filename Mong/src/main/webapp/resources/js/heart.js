console.log("heart module...");

var heartService = (function(){
	
	
	function add( reply, callback){
		console.log("reply.......");
		$.ajax({
			type: 'post',
			url: '/heart/new',
			data: JSON.stringify(reply),
			contentType: "application/json; charset = utf-8",
			success : function(result, status, xhr){
				
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
		
	}
	
	
			function remove(h_num, callback, error){
			
			$.ajax({
				type: 'delete',
				url : '/heart/' + h_num,
				success : function(deleteResult, status, xhr){
					if(callback){
						callback(deleteResult);
					}
				},
				error : function(xhr, status, er){
					if(error){
						error(er);
					}
				}
			});
		}
	
	
	return {
		add:add,
		remove:remove
		};
	
})();