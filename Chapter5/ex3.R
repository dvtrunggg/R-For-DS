TinhGiaDien = function(so_kw){
	#tinh tien dien cho ho gia dinh dua theo bieu gia
	muc1 = 1678
	muc2 = 1734
	muc3 = 2014
	muc4 = 2536
	muc5 = 2834
	muc6 = 2927
	bac50 = 50
	bac100 = 100
	tien_dien = 0
	
	if (so_kw <= 50){
		tien_dien = so_kw * muc1
		
	} else if(so_kw <= 100){
		tien_dien = bac50 * muc1 + (so_kw - bac50) * muc2

	} else if(so_kw <= 200){
		tien_dien = bac50 * muc1 + bac50 * muc2 + (so_kw - bac100) * muc3

	} else if (so_kw <= 300){
		tien_dien = bac50 * muc1 + bac50 * muc2 + bac100 * muc3 + (so_kw - bac50 - bac50 - bac100) * muc4

	} else if (so_kw <= 400){
		tien_dien = bac50 * muc1 + bac50 * muc2 + bac100 * muc3 +
		bac100 * muc4 + (so_kw - bac50 - bac50 - bac100 - bac100) * muc5

	} else{
		tien_dien = bac50 * muc1 + bac50 * muc2 + bac100 * muc3 +
		bac100 * muc4 + bac100 * muc5 +
		(so_kw - bac50 - bac50 - bac100 - bac100 - bac100) * muc6
	}
	
	return (tien_dien)
}


isPrime <- function(num) {
   if (num == 2) {
      TRUE
   } else if (any(num %% 2:(num-1) == 0)) {
      FALSE
   } else { 
      TRUE
   }
}