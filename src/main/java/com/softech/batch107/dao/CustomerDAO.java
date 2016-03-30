package com.softech.batch107.dao;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.softech.batch107.model.Customer;

@Repository
public interface CustomerDAO extends JpaRepository<Customer, Integer> {
	/*
	 * Còn cái interface này. Nếu làm như hibernate hồi trước thì interface dùng
	 * để giao tiếp với tầng khác bằng những hàm nó muốn thôi. Còn ta phải
	 * implements interface này lại để khai báo rõ cái hàm trong interface ra.
	 */

	/*
	 * Nhưng đây là 1 interface đặc biệt do spring nó cung cấp, khi mình cho
	 * extends JpaRepository thì nó sẽ tự động sinh ra cái class implement cho
	 * mình luôn. khỏi phải implement = tay mệt
	 */

	
	/* Còn nếu mình muốn thêm những hàm đặc biệt mà spring nó ko cung cấp thì
	 tn?
	Bình thường những hàm này phải implement, nhưng giờ ko implement thì sao viết query?
			SPring nó đọc theo cú pháp tên hàm, ví dụ findBy....And...Or...OrderBy.... thì nó sẽ biết là mình cần cgi,
			tự sinh ra hàm luôn*/
	/*ví dụ vô nhà hàng chỉ cần nói, tao muốn ăn cơm tấm, thì tự nó làm luôn =))
	chỉ cần nói "taoMuonAnComTam" là nó biết =))
	y như cái tên hàm này này findByEmailAndPasswordAndPhone*/

	public Customer findByEmailAndPasswordAndStatus(@Param("email") String email, @Param("password") String password, @Param("status") byte status);


	public Customer findByEmail(@Param("email") String email);
	
	

//	@Query(value = "insert into customers (FullName, Email, Password, Status) VALUES (?1, ?2, ?3, 0)", nativeQuery = true)
//	public void create(@Param("FullName")String FullName, @Param("Email")String Email, @Param("Password")String Password);
	
}
