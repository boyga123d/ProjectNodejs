var db=require('./db');

module.exports={
	
	productdetails: function(data,callback) {
		var sql='select * from product where id=?';
		var param=[data.id];
			db.getData(sql,param,function(result){
			if(result.length==0 || result==null)
			{
				callback(false);
			}
			else
			{
				callback(result);	
			}
		});
	},
	addtocart: function(data,callback) {
		var sql='select * from product where id=?';
		var param=[data.id];
			db.getData(sql,param,function(result){
			if(result.length==0 || result==null)
			{
				callback(false);
			}
			else
			{
				callback(result);	
			}
		});
	},
	searchproduct: function(data,callback) {
		var sql="SELECT * FROM product WHERE productname LIKE '" + data.productname + "%'";
			db.getAllData(sql,function(result){
			if(result.length==0 || result==null)
			{
				callback(false);
			}
			else
			{
				callback(result);
			}	
		});
	},
	searchproductcatagory: function(data,callback) {
		var sql='SELECT * FROM `product` WHERE catagory LIKE ?';
		var param=[data.catagory];
			db.getData(sql,param,function(result){
			if(result.length==0 || result==null)
			{
				callback(false);
			}
			else
			{
				// for(var i=0;i<result.length;i++)
				// {
				// 	for(var j=0;j<result.length;j++)
				// 	{
				// 		if( result[i].catagory == result[j].catagory ) 
				// 		{
				// 			return
				// 		} 
				// 	}
				// }
				callback(true)			
			}
		});
	}
};