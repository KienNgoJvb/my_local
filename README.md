Architecture Flutter
- app
	- core
		- component
		- constants
		- utils
		- values
			- strings.dart
			- colors.dart
			- languages
	- domain
		- data
		- entity
		- error
		- repositories
	- features
		- bindings
		- controller
		- ui
	- routes
		- app.dart
		- routes.dart
	- main.dart
	
*** MỘT SỐ LƯU Ý :**
1. Đặt tên file : viết thường không dấu, ngăn cách giữa các chữ bằng dấu '_'
Ex: home_page.dart
2. Ràng buộc giữa View và các file Controller, Repository bằng cách tạo các ràng buộc riêng biệt
Ex: màn hình Home => tạo home_binding.dart, màn hình Login => tạo login_binding.dart
3. Bắt đầu dự án cần tạo các component common
Ex: text_input.dart, button_default.dart, app_bar.dart, ...

**Một số kiến thức cần tìm hiểu :**
1. Tìm hiểu sử dụng CI/CD
2. Tìm hiểu về Unit Test, Integration Test

**Các kiến thức khi bắt đầu lập trình với Flutter**
- Lifecycle
- State management
- JIT và AOT , vì sao dart combine cả 2
- Cơ chế xử lý async trong dart
- Cách sử dụng key
- Phân biệt stateless và stateful
- Cách custom animation
- Cơ chế hoạt động của navigation 2.0
- Phân biệt widget , render object, elements
- Giao tiếp với backend (firebase, web socket, logging, …)
- Test (BDD, TDD, …)
- Package management và public to store (IOS và ANDROID)
- Null safety để làm gì ?
- Sự khác biệt giữa http và dao
- Bloc, Mobx, Gets
- Stream , isolate, event loop, micro task
- Painting widget
- Wrap library native qua lib flutter
- Profiling
