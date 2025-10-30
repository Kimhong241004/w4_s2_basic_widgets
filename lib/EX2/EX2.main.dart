import 'package:flutter/material.dart';
  
void main() {
	runApp(
		MaterialApp(
			
			home: Scaffold(
				backgroundColor: Colors.grey[200],
				body: SafeArea(
					child: Container(
						width: double.infinity,
						height: double.infinity,
						color: Colors.grey[200],
						child: Center(
							
							child: FractionallySizedBox(
								widthFactor: 0.78,
								heightFactor: 0.78,
												child: Container(
													padding: const EdgeInsets.all(18),
													decoration: BoxDecoration(
														color: Colors.transparent,
														borderRadius: BorderRadius.circular(12),
														boxShadow: const [
															BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0,6)),
														],
													),
									child: Container(
										decoration: BoxDecoration(
											color: Colors.blue[300],
											borderRadius: BorderRadius.circular(12),
										),
										padding: const EdgeInsets.all(20),
										child: Container(
											decoration: BoxDecoration(
												color: Colors.blue[600],
												borderRadius: BorderRadius.circular(10),
											),
											child: const Center(
												child: Text(
													'CADT STUDENTS',
													style: TextStyle(
														decoration: TextDecoration.none,
														color: Colors.white,
														fontSize: 28,
														fontWeight: FontWeight.bold,
														letterSpacing: 2.0,
													),
												),
											),
										),
									),
								),
							),
						),
					),
				),
			),
		),
	);
}

